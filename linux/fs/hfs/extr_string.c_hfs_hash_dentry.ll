; ModuleID = '/home/carl/AnghaBench/linux/fs/hfs/extr_string.c_hfs_hash_dentry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfs/extr_string.c_hfs_hash_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.qstr = type { i8*, i32, i32 }

@HFS_NAMELEN = common dso_local global i32 0, align 4
@caseorder = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfs_hash_dentry(%struct.dentry* %0, %struct.qstr* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.qstr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.qstr* %1, %struct.qstr** %4, align 8
  %8 = load %struct.qstr*, %struct.qstr** %4, align 8
  %9 = getelementptr inbounds %struct.qstr, %struct.qstr* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %5, align 8
  %11 = load %struct.qstr*, %struct.qstr** %4, align 8
  %12 = getelementptr inbounds %struct.qstr, %struct.qstr* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @HFS_NAMELEN, align 4
  %16 = icmp ugt i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @HFS_NAMELEN, align 4
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %17, %2
  %20 = load %struct.dentry*, %struct.dentry** %3, align 8
  %21 = call i32 @init_name_hash(%struct.dentry* %20)
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %35, %19
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = load i32*, i32** @caseorder, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %5, align 8
  %29 = load i8, i8* %27, align 1
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds i32, i32* %26, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @partial_name_hash(i32 %32, i32 %33)
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %25
  %36 = load i32, i32* %7, align 4
  %37 = add i32 %36, -1
  store i32 %37, i32* %7, align 4
  br label %22

38:                                               ; preds = %22
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @end_name_hash(i32 %39)
  %41 = load %struct.qstr*, %struct.qstr** %4, align 8
  %42 = getelementptr inbounds %struct.qstr, %struct.qstr* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  ret i32 0
}

declare dso_local i32 @init_name_hash(%struct.dentry*) #1

declare dso_local i32 @partial_name_hash(i32, i32) #1

declare dso_local i32 @end_name_hash(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
