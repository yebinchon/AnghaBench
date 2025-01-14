; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_insert_aext.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_insert_aext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.extent_position = type { i64 }
%struct.kernel_lb_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, i32, i32)* @udf_insert_aext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_insert_aext(%struct.inode* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.extent_position, align 8
  %6 = alloca %struct.kernel_lb_addr, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.kernel_lb_addr, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %5, i32 0, i32 0
  store i64 %1, i64* %12, align 8
  %13 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %6, i32 0, i32 0
  store i32 %2, i32* %13, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %5, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %5, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @get_bh(i64 %19)
  br label %21

21:                                               ; preds = %17, %4
  br label %22

22:                                               ; preds = %26, %21
  %23 = load %struct.inode*, %struct.inode** %7, align 8
  %24 = call i32 @udf_next_aext(%struct.inode* %23, %struct.extent_position* %5, %struct.kernel_lb_addr* %9, i32* %10, i32 0)
  store i32 %24, i32* %11, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load %struct.inode*, %struct.inode** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @udf_write_aext(%struct.inode* %27, %struct.extent_position* %5, %struct.kernel_lb_addr* %6, i32 %28, i32 1)
  %30 = bitcast %struct.kernel_lb_addr* %6 to i8*
  %31 = bitcast %struct.kernel_lb_addr* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 4, i1 false)
  %32 = load i32, i32* %11, align 4
  %33 = shl i32 %32, 30
  %34 = load i32, i32* %10, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %8, align 4
  br label %22

36:                                               ; preds = %22
  %37 = load %struct.inode*, %struct.inode** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @udf_add_aext(%struct.inode* %37, %struct.extent_position* %5, %struct.kernel_lb_addr* %6, i32 %38, i32 1)
  %40 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %5, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @brelse(i64 %41)
  %43 = load i32, i32* %8, align 4
  %44 = ashr i32 %43, 30
  ret i32 %44
}

declare dso_local i32 @get_bh(i64) #1

declare dso_local i32 @udf_next_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i32*, i32) #1

declare dso_local i32 @udf_write_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @udf_add_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i32, i32) #1

declare dso_local i32 @brelse(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
