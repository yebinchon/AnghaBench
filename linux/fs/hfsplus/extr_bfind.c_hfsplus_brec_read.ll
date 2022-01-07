; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_bfind.c_hfsplus_brec_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_bfind.c_hfsplus_brec_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfs_find_data = type { i32, i32, i32 }

@hfs_find_rec_by_key = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfs_brec_read(%struct.hfs_find_data* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hfs_find_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hfs_find_data* %0, %struct.hfs_find_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.hfs_find_data*, %struct.hfs_find_data** %5, align 8
  %10 = load i32, i32* @hfs_find_rec_by_key, align 4
  %11 = call i32 @hfs_brec_find(%struct.hfs_find_data* %9, i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %4, align 4
  br label %37

16:                                               ; preds = %3
  %17 = load %struct.hfs_find_data*, %struct.hfs_find_data** %5, align 8
  %18 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %37

25:                                               ; preds = %16
  %26 = load %struct.hfs_find_data*, %struct.hfs_find_data** %5, align 8
  %27 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.hfs_find_data*, %struct.hfs_find_data** %5, align 8
  %31 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.hfs_find_data*, %struct.hfs_find_data** %5, align 8
  %34 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @hfs_bnode_read(i32 %28, i8* %29, i32 %32, i32 %35)
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %25, %22, %14
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @hfs_brec_find(%struct.hfs_find_data*, i32) #1

declare dso_local i32 @hfs_bnode_read(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
