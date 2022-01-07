; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_auditfilter.c_audit_rule_change.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_auditfilter.c_audit_rule_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"add_rule\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"remove_rule\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @audit_rule_change(i32 %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.audit_entry*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %53 [
    i32 129, label %13
    i32 128, label %33
  ]

13:                                               ; preds = %4
  %14 = load i8*, i8** %8, align 8
  %15 = load i64, i64* %9, align 8
  %16 = call %struct.audit_entry* @audit_data_to_entry(i8* %14, i64 %15)
  store %struct.audit_entry* %16, %struct.audit_entry** %11, align 8
  %17 = load %struct.audit_entry*, %struct.audit_entry** %11, align 8
  %18 = call i32 @IS_ERR(%struct.audit_entry* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load %struct.audit_entry*, %struct.audit_entry** %11, align 8
  %22 = call i32 @PTR_ERR(%struct.audit_entry* %21)
  store i32 %22, i32* %5, align 4
  br label %80

23:                                               ; preds = %13
  %24 = load %struct.audit_entry*, %struct.audit_entry** %11, align 8
  %25 = call i32 @audit_add_rule(%struct.audit_entry* %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.audit_entry*, %struct.audit_entry** %11, align 8
  %27 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %26, i32 0, i32 0
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @audit_log_rule_change(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.TYPE_2__* %27, i32 %31)
  br label %57

33:                                               ; preds = %4
  %34 = load i8*, i8** %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call %struct.audit_entry* @audit_data_to_entry(i8* %34, i64 %35)
  store %struct.audit_entry* %36, %struct.audit_entry** %11, align 8
  %37 = load %struct.audit_entry*, %struct.audit_entry** %11, align 8
  %38 = call i32 @IS_ERR(%struct.audit_entry* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load %struct.audit_entry*, %struct.audit_entry** %11, align 8
  %42 = call i32 @PTR_ERR(%struct.audit_entry* %41)
  store i32 %42, i32* %5, align 4
  br label %80

43:                                               ; preds = %33
  %44 = load %struct.audit_entry*, %struct.audit_entry** %11, align 8
  %45 = call i32 @audit_del_rule(%struct.audit_entry* %44)
  store i32 %45, i32* %10, align 4
  %46 = load %struct.audit_entry*, %struct.audit_entry** %11, align 8
  %47 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %46, i32 0, i32 0
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i32 @audit_log_rule_change(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_2__* %47, i32 %51)
  br label %57

53:                                               ; preds = %4
  %54 = call i32 @WARN_ON(i32 1)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %80

57:                                               ; preds = %43, %23
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %6, align 4
  %62 = icmp eq i32 %61, 128
  br i1 %62, label %63, label %78

63:                                               ; preds = %60, %57
  %64 = load %struct.audit_entry*, %struct.audit_entry** %11, align 8
  %65 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load %struct.audit_entry*, %struct.audit_entry** %11, align 8
  %71 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @audit_remove_mark(i64 %73)
  br label %75

75:                                               ; preds = %69, %63
  %76 = load %struct.audit_entry*, %struct.audit_entry** %11, align 8
  %77 = call i32 @audit_free_rule(%struct.audit_entry* %76)
  br label %78

78:                                               ; preds = %75, %60
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %78, %53, %40, %20
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local %struct.audit_entry* @audit_data_to_entry(i8*, i64) #1

declare dso_local i32 @IS_ERR(%struct.audit_entry*) #1

declare dso_local i32 @PTR_ERR(%struct.audit_entry*) #1

declare dso_local i32 @audit_add_rule(%struct.audit_entry*) #1

declare dso_local i32 @audit_log_rule_change(i8*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @audit_del_rule(%struct.audit_entry*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @audit_remove_mark(i64) #1

declare dso_local i32 @audit_free_rule(%struct.audit_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
