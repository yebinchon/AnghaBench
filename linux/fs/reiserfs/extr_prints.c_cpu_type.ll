; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_prints.c_cpu_type.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_prints.c_cpu_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_key = type { i32 }

@TYPE_STAT_DATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"SD\00", align 1
@TYPE_DIRENTRY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"DIR\00", align 1
@TYPE_DIRECT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"DIRECT\00", align 1
@TYPE_INDIRECT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"IND\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.cpu_key*)* @cpu_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cpu_type(%struct.cpu_key* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cpu_key*, align 8
  store %struct.cpu_key* %0, %struct.cpu_key** %3, align 8
  %4 = load %struct.cpu_key*, %struct.cpu_key** %3, align 8
  %5 = call i64 @cpu_key_k_type(%struct.cpu_key* %4)
  %6 = load i64, i64* @TYPE_STAT_DATA, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %28

9:                                                ; preds = %1
  %10 = load %struct.cpu_key*, %struct.cpu_key** %3, align 8
  %11 = call i64 @cpu_key_k_type(%struct.cpu_key* %10)
  %12 = load i64, i64* @TYPE_DIRENTRY, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %28

15:                                               ; preds = %9
  %16 = load %struct.cpu_key*, %struct.cpu_key** %3, align 8
  %17 = call i64 @cpu_key_k_type(%struct.cpu_key* %16)
  %18 = load i64, i64* @TYPE_DIRECT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %28

21:                                               ; preds = %15
  %22 = load %struct.cpu_key*, %struct.cpu_key** %3, align 8
  %23 = call i64 @cpu_key_k_type(%struct.cpu_key* %22)
  %24 = load i64, i64* @TYPE_INDIRECT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %28

27:                                               ; preds = %21
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %28

28:                                               ; preds = %27, %26, %20, %14, %8
  %29 = load i8*, i8** %2, align 8
  ret i8* %29
}

declare dso_local i64 @cpu_key_k_type(%struct.cpu_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
