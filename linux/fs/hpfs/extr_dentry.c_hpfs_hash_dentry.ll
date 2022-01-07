; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_dentry.c_hpfs_hash_dentry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_dentry.c_hpfs_hash_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.qstr = type { i32, i8*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.qstr*)* @hpfs_hash_dentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpfs_hash_dentry(%struct.dentry* %0, %struct.qstr* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.qstr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.qstr* %1, %struct.qstr** %4, align 8
  %8 = load %struct.qstr*, %struct.qstr** %4, align 8
  %9 = getelementptr inbounds %struct.qstr, %struct.qstr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.qstr*, %struct.qstr** %4, align 8
  %15 = getelementptr inbounds %struct.qstr, %struct.qstr* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 46
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %49

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22, %2
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %44

26:                                               ; preds = %23
  %27 = load %struct.qstr*, %struct.qstr** %4, align 8
  %28 = getelementptr inbounds %struct.qstr, %struct.qstr* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 46
  br i1 %33, label %42, label %34

34:                                               ; preds = %26
  %35 = load %struct.qstr*, %struct.qstr** %4, align 8
  %36 = getelementptr inbounds %struct.qstr, %struct.qstr* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 46
  br i1 %41, label %42, label %43

42:                                               ; preds = %34, %26
  br label %49

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43, %23
  %45 = load %struct.qstr*, %struct.qstr** %4, align 8
  %46 = getelementptr inbounds %struct.qstr, %struct.qstr* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @hpfs_adjust_length(i8* %47, i32* %7)
  br label %49

49:                                               ; preds = %44, %42, %21
  %50 = load %struct.dentry*, %struct.dentry** %3, align 8
  %51 = call i64 @init_name_hash(%struct.dentry* %50)
  store i64 %51, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %73, %49
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %76

56:                                               ; preds = %52
  %57 = load %struct.dentry*, %struct.dentry** %3, align 8
  %58 = getelementptr inbounds %struct.dentry, %struct.dentry* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.TYPE_2__* @hpfs_sb(i32 %59)
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.qstr*, %struct.qstr** %4, align 8
  %64 = getelementptr inbounds %struct.qstr, %struct.qstr* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = call i32 @hpfs_upcase(i32 %62, i8 signext %69)
  %71 = load i64, i64* %5, align 8
  %72 = call i64 @partial_name_hash(i32 %70, i64 %71)
  store i64 %72, i64* %5, align 8
  br label %73

73:                                               ; preds = %56
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %52

76:                                               ; preds = %52
  %77 = load i64, i64* %5, align 8
  %78 = call i32 @end_name_hash(i64 %77)
  %79 = load %struct.qstr*, %struct.qstr** %4, align 8
  %80 = getelementptr inbounds %struct.qstr, %struct.qstr* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  ret i32 0
}

declare dso_local i32 @hpfs_adjust_length(i8*, i32*) #1

declare dso_local i64 @init_name_hash(%struct.dentry*) #1

declare dso_local i64 @partial_name_hash(i32, i64) #1

declare dso_local i32 @hpfs_upcase(i32, i8 signext) #1

declare dso_local %struct.TYPE_2__* @hpfs_sb(i32) #1

declare dso_local i32 @end_name_hash(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
