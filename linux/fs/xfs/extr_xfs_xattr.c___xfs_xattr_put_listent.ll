; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_xattr.c___xfs_xattr_put_listent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_xattr.c___xfs_xattr_put_listent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_attr_list_context = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_attr_list_context*, i8*, i32, i8*, i32)* @__xfs_xattr_put_listent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__xfs_xattr_put_listent(%struct.xfs_attr_list_context* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.xfs_attr_list_context*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.xfs_attr_list_context* %0, %struct.xfs_attr_list_context** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.xfs_attr_list_context*, %struct.xfs_attr_list_context** %6, align 8
  %14 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %5
  %18 = load %struct.xfs_attr_list_context*, %struct.xfs_attr_list_context** %6, align 8
  %19 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %5
  br label %84

23:                                               ; preds = %17
  %24 = load %struct.xfs_attr_list_context*, %struct.xfs_attr_list_context** %6, align 8
  %25 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %75

29:                                               ; preds = %23
  %30 = load %struct.xfs_attr_list_context*, %struct.xfs_attr_list_context** %6, align 8
  %31 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %32, %33
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %34, %35
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load %struct.xfs_attr_list_context*, %struct.xfs_attr_list_context** %6, align 8
  %40 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp sgt i32 %38, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %29
  %44 = load %struct.xfs_attr_list_context*, %struct.xfs_attr_list_context** %6, align 8
  %45 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %44, i32 0, i32 0
  store i32 -1, i32* %45, align 8
  %46 = load %struct.xfs_attr_list_context*, %struct.xfs_attr_list_context** %6, align 8
  %47 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %46, i32 0, i32 1
  store i32 1, i32* %47, align 4
  br label %84

48:                                               ; preds = %29
  %49 = load %struct.xfs_attr_list_context*, %struct.xfs_attr_list_context** %6, align 8
  %50 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = load %struct.xfs_attr_list_context*, %struct.xfs_attr_list_context** %6, align 8
  %54 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %52, i64 %56
  store i8* %57, i8** %11, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @strncpy(i8* %58, i8* %59, i32 %60)
  %62 = load i32, i32* %8, align 4
  %63 = load i8*, i8** %11, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  store i8* %65, i8** %11, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @strncpy(i8* %66, i8* %67, i32 %68)
  %70 = load i32, i32* %10, align 4
  %71 = load i8*, i8** %11, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8* %73, i8** %11, align 8
  %74 = load i8*, i8** %11, align 8
  store i8 0, i8* %74, align 1
  br label %75

75:                                               ; preds = %48, %28
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %76, %77
  %79 = add nsw i32 %78, 1
  %80 = load %struct.xfs_attr_list_context*, %struct.xfs_attr_list_context** %6, align 8
  %81 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, %79
  store i32 %83, i32* %81, align 8
  br label %84

84:                                               ; preds = %75, %43, %22
  ret void
}

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
