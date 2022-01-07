; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_message.c_rds_message_add_extension.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_message.c_rds_message_add_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_header = type { i8* }

@RDS_EXTHDR_NONE = common dso_local global i8 0, align 1
@__RDS_EXTHDR_MAX = common dso_local global i32 0, align 4
@rds_exthdr_size = common dso_local global i32* null, align 8
@RDS_HEADER_EXT_SPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rds_message_add_extension(%struct.rds_header* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rds_header*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.rds_header* %0, %struct.rds_header** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = zext i32 %12 to i64
  %14 = add i64 4, %13
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %10, align 4
  %16 = load %struct.rds_header*, %struct.rds_header** %6, align 8
  %17 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, i8* @RDS_EXTHDR_NONE, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp ne i32 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %61

26:                                               ; preds = %4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @__RDS_EXTHDR_MAX, align 4
  %29 = icmp uge i32 %27, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %9, align 4
  %32 = load i32*, i32** @rds_exthdr_size, align 8
  %33 = load i32, i32* %7, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %31, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30, %26
  store i32 0, i32* %5, align 4
  br label %61

39:                                               ; preds = %30
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @RDS_HEADER_EXT_SPACE, align 4
  %42 = icmp uge i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %61

44:                                               ; preds = %39
  %45 = load %struct.rds_header*, %struct.rds_header** %6, align 8
  %46 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %11, align 8
  %48 = load i32, i32* %7, align 4
  %49 = trunc i32 %48 to i8
  %50 = load i8*, i8** %11, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %11, align 8
  store i8 %49, i8* %50, align 1
  %52 = load i8*, i8** %11, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @memcpy(i8* %52, i8* %53, i32 %54)
  %56 = load i8, i8* @RDS_EXTHDR_NONE, align 1
  %57 = load i8*, i8** %11, align 8
  %58 = load i32, i32* %9, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  store i8 %56, i8* %60, align 1
  store i32 1, i32* %5, align 4
  br label %61

61:                                               ; preds = %44, %43, %38, %25
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
