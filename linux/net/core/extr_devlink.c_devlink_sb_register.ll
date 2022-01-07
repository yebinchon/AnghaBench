; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_sb_register.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_sb_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32, i32 }
%struct.devlink_sb = type { i32, i32, i8*, i8*, i8*, i8*, i32 }

@EEXIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devlink_sb_register(%struct.devlink* %0, i32 %1, i32 %2, i8* %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca %struct.devlink*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.devlink_sb*, align 8
  %16 = alloca i32, align 4
  store %struct.devlink* %0, %struct.devlink** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  store i32 0, i32* %16, align 4
  %17 = load %struct.devlink*, %struct.devlink** %8, align 8
  %18 = getelementptr inbounds %struct.devlink, %struct.devlink* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.devlink*, %struct.devlink** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i64 @devlink_sb_index_exists(%struct.devlink* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %7
  %25 = load i32, i32* @EEXIST, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %16, align 4
  br label %59

27:                                               ; preds = %7
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.devlink_sb* @kzalloc(i32 48, i32 %28)
  store %struct.devlink_sb* %29, %struct.devlink_sb** %15, align 8
  %30 = load %struct.devlink_sb*, %struct.devlink_sb** %15, align 8
  %31 = icmp ne %struct.devlink_sb* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %16, align 4
  br label %59

35:                                               ; preds = %27
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.devlink_sb*, %struct.devlink_sb** %15, align 8
  %38 = getelementptr inbounds %struct.devlink_sb, %struct.devlink_sb* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.devlink_sb*, %struct.devlink_sb** %15, align 8
  %41 = getelementptr inbounds %struct.devlink_sb, %struct.devlink_sb* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = load %struct.devlink_sb*, %struct.devlink_sb** %15, align 8
  %44 = getelementptr inbounds %struct.devlink_sb, %struct.devlink_sb* %43, i32 0, i32 5
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = load %struct.devlink_sb*, %struct.devlink_sb** %15, align 8
  %47 = getelementptr inbounds %struct.devlink_sb, %struct.devlink_sb* %46, i32 0, i32 4
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = load %struct.devlink_sb*, %struct.devlink_sb** %15, align 8
  %50 = getelementptr inbounds %struct.devlink_sb, %struct.devlink_sb* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** %14, align 8
  %52 = load %struct.devlink_sb*, %struct.devlink_sb** %15, align 8
  %53 = getelementptr inbounds %struct.devlink_sb, %struct.devlink_sb* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  %54 = load %struct.devlink_sb*, %struct.devlink_sb** %15, align 8
  %55 = getelementptr inbounds %struct.devlink_sb, %struct.devlink_sb* %54, i32 0, i32 1
  %56 = load %struct.devlink*, %struct.devlink** %8, align 8
  %57 = getelementptr inbounds %struct.devlink, %struct.devlink* %56, i32 0, i32 1
  %58 = call i32 @list_add_tail(i32* %55, i32* %57)
  br label %59

59:                                               ; preds = %35, %32, %24
  %60 = load %struct.devlink*, %struct.devlink** %8, align 8
  %61 = getelementptr inbounds %struct.devlink, %struct.devlink* %60, i32 0, i32 0
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load i32, i32* %16, align 4
  ret i32 %63
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @devlink_sb_index_exists(%struct.devlink*, i32) #1

declare dso_local %struct.devlink_sb* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
