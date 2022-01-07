; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_template_lib.c_ima_eventname_init_common.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_template_lib.c_ima_eventname_init_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ima_event_data = type { i8*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }
%struct.ima_field_data = type { i32 }

@IMA_EVENT_NAME_LEN_MAX = common dso_local global i64 0, align 8
@DATA_FMT_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ima_event_data*, %struct.ima_field_data*, i32)* @ima_eventname_init_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ima_eventname_init_common(%struct.ima_event_data* %0, %struct.ima_field_data* %1, i32 %2) #0 {
  %4 = alloca %struct.ima_event_data*, align 8
  %5 = alloca %struct.ima_field_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.ima_event_data* %0, %struct.ima_event_data** %4, align 8
  store %struct.ima_field_data* %1, %struct.ima_field_data** %5, align 8
  store i32 %2, i32* %6, align 4
  store i8* null, i8** %7, align 8
  store i64 0, i64* %8, align 8
  %9 = load %struct.ima_event_data*, %struct.ima_event_data** %4, align 8
  %10 = getelementptr inbounds %struct.ima_event_data, %struct.ima_event_data* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.ima_event_data*, %struct.ima_event_data** %4, align 8
  %15 = getelementptr inbounds %struct.ima_event_data, %struct.ima_event_data* %14, i32 0, i32 1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = icmp eq %struct.TYPE_8__* %16, null
  br label %18

18:                                               ; preds = %13, %3
  %19 = phi i1 [ false, %3 ], [ %17, %13 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.ima_event_data*, %struct.ima_event_data** %4, align 8
  %23 = getelementptr inbounds %struct.ima_event_data, %struct.ima_event_data* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %42

26:                                               ; preds = %18
  %27 = load %struct.ima_event_data*, %struct.ima_event_data** %4, align 8
  %28 = getelementptr inbounds %struct.ima_event_data, %struct.ima_event_data* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %7, align 8
  %30 = load %struct.ima_event_data*, %struct.ima_event_data** %4, align 8
  %31 = getelementptr inbounds %struct.ima_event_data, %struct.ima_event_data* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @strlen(i8* %32)
  store i64 %33, i64* %8, align 8
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %26
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @IMA_EVENT_NAME_LEN_MAX, align 8
  %39 = icmp sle i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36, %26
  br label %62

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %41, %18
  %43 = load %struct.ima_event_data*, %struct.ima_event_data** %4, align 8
  %44 = getelementptr inbounds %struct.ima_event_data, %struct.ima_event_data* %43, i32 0, i32 1
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = icmp ne %struct.TYPE_8__* %45, null
  br i1 %46, label %47, label %59

47:                                               ; preds = %42
  %48 = load %struct.ima_event_data*, %struct.ima_event_data** %4, align 8
  %49 = getelementptr inbounds %struct.ima_event_data, %struct.ima_event_data* %48, i32 0, i32 1
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %7, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = call i64 @strlen(i8* %57)
  store i64 %58, i64* %8, align 8
  br label %61

59:                                               ; preds = %42
  %60 = load i64, i64* @IMA_EVENT_NAME_LEN_MAX, align 8
  store i64 %60, i64* %8, align 8
  br label %61

61:                                               ; preds = %59, %47
  br label %62

62:                                               ; preds = %61, %40
  %63 = load i8*, i8** %7, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load i32, i32* @DATA_FMT_STRING, align 4
  %66 = load %struct.ima_field_data*, %struct.ima_field_data** %5, align 8
  %67 = call i32 @ima_write_template_field_data(i8* %63, i64 %64, i32 %65, %struct.ima_field_data* %66)
  ret i32 %67
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ima_write_template_field_data(i8*, i64, i32, %struct.ima_field_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
