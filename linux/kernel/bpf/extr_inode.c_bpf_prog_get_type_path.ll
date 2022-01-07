; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_inode.c_bpf_prog_get_type_path.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_inode.c_bpf_prog_get_type_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog = type { i32 }
%struct.path = type { i32 }

@LOOKUP_FOLLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bpf_prog* @bpf_prog_get_type_path(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.bpf_prog*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_prog*, align 8
  %7 = alloca %struct.path, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* @LOOKUP_FOLLOW, align 4
  %11 = call i32 @kern_path(i8* %9, i32 %10, %struct.path* %7)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.bpf_prog* @ERR_PTR(i32 %15)
  store %struct.bpf_prog* %16, %struct.bpf_prog** %3, align 8
  br label %31

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.path, %struct.path* %7, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @d_backing_inode(i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = call %struct.bpf_prog* @__get_prog_inode(i32 %20, i32 %21)
  store %struct.bpf_prog* %22, %struct.bpf_prog** %6, align 8
  %23 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %24 = call i32 @IS_ERR(%struct.bpf_prog* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %17
  %27 = call i32 @touch_atime(%struct.path* %7)
  br label %28

28:                                               ; preds = %26, %17
  %29 = call i32 @path_put(%struct.path* %7)
  %30 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  store %struct.bpf_prog* %30, %struct.bpf_prog** %3, align 8
  br label %31

31:                                               ; preds = %28, %14
  %32 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  ret %struct.bpf_prog* %32
}

declare dso_local i32 @kern_path(i8*, i32, %struct.path*) #1

declare dso_local %struct.bpf_prog* @ERR_PTR(i32) #1

declare dso_local %struct.bpf_prog* @__get_prog_inode(i32, i32) #1

declare dso_local i32 @d_backing_inode(i32) #1

declare dso_local i32 @IS_ERR(%struct.bpf_prog*) #1

declare dso_local i32 @touch_atime(%struct.path*) #1

declare dso_local i32 @path_put(%struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
