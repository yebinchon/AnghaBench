; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_template_lib.c_ima_eventdigest_modsig_init.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_template_lib.c_ima_eventdigest_modsig_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ima_event_data = type { i32, i64 }
%struct.ima_field_data = type { i32 }

@HASH_ALGO_SHA1 = common dso_local global i32 0, align 4
@HASH_ALGO__LAST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ima_eventdigest_modsig_init(%struct.ima_event_data* %0, %struct.ima_field_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ima_event_data*, align 8
  %5 = alloca %struct.ima_field_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ima_event_data* %0, %struct.ima_event_data** %4, align 8
  store %struct.ima_field_data* %1, %struct.ima_field_data** %5, align 8
  %10 = load %struct.ima_event_data*, %struct.ima_event_data** %4, align 8
  %11 = getelementptr inbounds %struct.ima_event_data, %struct.ima_event_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %49

15:                                               ; preds = %2
  %16 = load %struct.ima_event_data*, %struct.ima_event_data** %4, align 8
  %17 = getelementptr inbounds %struct.ima_event_data, %struct.ima_event_data* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @HASH_ALGO_SHA1, align 4
  store i32 %21, i32* %6, align 4
  store i32* null, i32** %7, align 8
  store i64 0, i64* %8, align 8
  br label %43

22:                                               ; preds = %15
  %23 = load %struct.ima_event_data*, %struct.ima_event_data** %4, align 8
  %24 = getelementptr inbounds %struct.ima_event_data, %struct.ima_event_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @ima_get_modsig_digest(i32 %25, i32* %6, i32** %7, i64* %8)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %3, align 4
  br label %49

31:                                               ; preds = %22
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @HASH_ALGO__LAST, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i64, i64* %8, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35, %31
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %49

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41
  br label %43

43:                                               ; preds = %42, %20
  %44 = load i32*, i32** %7, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.ima_field_data*, %struct.ima_field_data** %5, align 8
  %48 = call i32 @ima_eventdigest_init_common(i32* %44, i64 %45, i32 %46, %struct.ima_field_data* %47)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %43, %38, %29, %14
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @ima_get_modsig_digest(i32, i32*, i32**, i64*) #1

declare dso_local i32 @ima_eventdigest_init_common(i32*, i64, i32, %struct.ima_field_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
