; ModuleID = '/home/carl/AnghaBench/linux/fs/hostfs/extr_hostfs_kern.c___dentry_name.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hostfs/extr_hostfs_kern.c___dentry_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@PATH_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dentry*, i8*)* @__dentry_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__dentry_name(%struct.dentry* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.dentry*, %struct.dentry** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i32, i32* @PATH_MAX, align 4
  %12 = call i8* @dentry_path_raw(%struct.dentry* %9, i8* %10, i32 %11)
  store i8* %12, i8** %6, align 8
  %13 = load %struct.dentry*, %struct.dentry** %4, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i64 @strlen(i8* %18)
  store i64 %19, i64* %8, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @IS_ERR(i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @__putname(i8* %24)
  store i8* null, i8** %3, align 8
  br label %67

26:                                               ; preds = %2
  %27 = load i8*, i8** %6, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @strlen(i8* %28)
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* @PATH_MAX, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = icmp ne i8* %31, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  %39 = load i8*, i8** %5, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* @PATH_MAX, align 4
  %42 = call i32 @strlcpy(i8* %39, i8* %40, i32 %41)
  %43 = load i64, i64* %8, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = ptrtoint i8* %44 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = icmp ugt i64 %43, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %26
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @__putname(i8* %51)
  store i8* null, i8** %3, align 8
  br label %67

53:                                               ; preds = %26
  %54 = load i8*, i8** %6, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = load i64, i64* %8, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  %58 = icmp ugt i8* %54, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load i8*, i8** %5, align 8
  %61 = load i64, i64* %8, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 @strcpy(i8* %62, i8* %63)
  br label %65

65:                                               ; preds = %59, %53
  %66 = load i8*, i8** %5, align 8
  store i8* %66, i8** %3, align 8
  br label %67

67:                                               ; preds = %65, %50, %23
  %68 = load i8*, i8** %3, align 8
  ret i8* %68
}

declare dso_local i8* @dentry_path_raw(%struct.dentry*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @__putname(i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
