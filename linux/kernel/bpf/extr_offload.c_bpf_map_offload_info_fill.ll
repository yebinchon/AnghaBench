; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_offload.c_bpf_map_offload_info_fill.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_offload.c_bpf_map_offload_info_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map_info = type { i32, i32, i32 }
%struct.bpf_map = type { i32 }
%struct.ns_get_path_bpf_map_args = type { %struct.bpf_map_info*, i32 }
%struct.inode = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.path = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }

@bpf_map_offload_info_fill_ns = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_map_offload_info_fill(%struct.bpf_map_info* %0, %struct.bpf_map* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_map_info*, align 8
  %5 = alloca %struct.bpf_map*, align 8
  %6 = alloca %struct.ns_get_path_bpf_map_args, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.path, align 8
  %9 = alloca i8*, align 8
  store %struct.bpf_map_info* %0, %struct.bpf_map_info** %4, align 8
  store %struct.bpf_map* %1, %struct.bpf_map** %5, align 8
  %10 = getelementptr inbounds %struct.ns_get_path_bpf_map_args, %struct.ns_get_path_bpf_map_args* %6, i32 0, i32 0
  %11 = load %struct.bpf_map_info*, %struct.bpf_map_info** %4, align 8
  store %struct.bpf_map_info* %11, %struct.bpf_map_info** %10, align 8
  %12 = getelementptr inbounds %struct.ns_get_path_bpf_map_args, %struct.ns_get_path_bpf_map_args* %6, i32 0, i32 1
  %13 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %14 = call i32 @map_to_offmap(%struct.bpf_map* %13)
  store i32 %14, i32* %12, align 8
  %15 = load i32, i32* @bpf_map_offload_info_fill_ns, align 4
  %16 = call i8* @ns_get_path_cb(%struct.path* %8, i32 %15, %struct.ns_get_path_bpf_map_args* %6)
  store i8* %16, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = call i64 @IS_ERR(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %2
  %21 = load %struct.bpf_map_info*, %struct.bpf_map_info** %4, align 8
  %22 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %50

28:                                               ; preds = %20
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @PTR_ERR(i8* %29)
  store i32 %30, i32* %3, align 4
  br label %50

31:                                               ; preds = %2
  %32 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load %struct.inode*, %struct.inode** %34, align 8
  store %struct.inode* %35, %struct.inode** %7, align 8
  %36 = load %struct.inode*, %struct.inode** %7, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @new_encode_dev(i32 %40)
  %42 = load %struct.bpf_map_info*, %struct.bpf_map_info** %4, align 8
  %43 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.inode*, %struct.inode** %7, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.bpf_map_info*, %struct.bpf_map_info** %4, align 8
  %48 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = call i32 @path_put(%struct.path* %8)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %31, %28, %25
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @map_to_offmap(%struct.bpf_map*) #1

declare dso_local i8* @ns_get_path_cb(%struct.path*, i32, %struct.ns_get_path_bpf_map_args*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @new_encode_dev(i32) #1

declare dso_local i32 @path_put(%struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
