; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_auditfilter.c_audit_dupe_lsm_field.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_auditfilter.c_audit_dupe_lsm_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_field = type { i8*, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"audit rule for LSM '%s' is invalid\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.audit_field*, %struct.audit_field*)* @audit_dupe_lsm_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audit_dupe_lsm_field(%struct.audit_field* %0, %struct.audit_field* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.audit_field*, align 8
  %5 = alloca %struct.audit_field*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.audit_field* %0, %struct.audit_field** %4, align 8
  store %struct.audit_field* %1, %struct.audit_field** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.audit_field*, %struct.audit_field** %5, align 8
  %9 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8* @kstrdup(i8* %10, i32 %11)
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %50

22:                                               ; preds = %2
  %23 = load i8*, i8** %7, align 8
  %24 = load %struct.audit_field*, %struct.audit_field** %4, align 8
  %25 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load %struct.audit_field*, %struct.audit_field** %4, align 8
  %27 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.audit_field*, %struct.audit_field** %4, align 8
  %30 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.audit_field*, %struct.audit_field** %4, align 8
  %33 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.audit_field*, %struct.audit_field** %4, align 8
  %36 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %35, i32 0, i32 1
  %37 = bitcast i32* %36 to i8**
  %38 = call i32 @security_audit_rule_init(i32 %28, i32 %31, i8* %34, i8** %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %22
  %44 = load %struct.audit_field*, %struct.audit_field** %4, align 8
  %45 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @pr_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %46)
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %43, %22
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %19
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @security_audit_rule_init(i32, i32, i8*, i8**) #1

declare dso_local i32 @pr_warn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
