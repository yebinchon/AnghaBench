; ModuleID = '/home/carl/AnghaBench/linux/mm/kasan/extr_generic_report.c_get_wild_bug_type.c'
source_filename = "/home/carl/AnghaBench/linux/mm/kasan/extr_generic_report.c_get_wild_bug_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kasan_access_info = type { i64 }

@.str = private unnamed_addr constant [14 x i8] c"unknown-crash\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"null-ptr-deref\00", align 1
@TASK_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"user-memory-access\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"wild-memory-access\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.kasan_access_info*)* @get_wild_bug_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_wild_bug_type(%struct.kasan_access_info* %0) #0 {
  %2 = alloca %struct.kasan_access_info*, align 8
  %3 = alloca i8*, align 8
  store %struct.kasan_access_info* %0, %struct.kasan_access_info** %2, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %4 = load %struct.kasan_access_info*, %struct.kasan_access_info** %2, align 8
  %5 = getelementptr inbounds %struct.kasan_access_info, %struct.kasan_access_info* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @PAGE_SIZE, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %19

10:                                               ; preds = %1
  %11 = load %struct.kasan_access_info*, %struct.kasan_access_info** %2, align 8
  %12 = getelementptr inbounds %struct.kasan_access_info, %struct.kasan_access_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @TASK_SIZE, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %18

17:                                               ; preds = %10
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %18

18:                                               ; preds = %17, %16
  br label %19

19:                                               ; preds = %18, %9
  %20 = load i8*, i8** %3, align 8
  ret i8* %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
