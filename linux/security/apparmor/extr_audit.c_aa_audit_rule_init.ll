; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_audit.c_aa_audit_rule_init.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_audit.c_aa_audit_rule_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.aa_audit_rule = type { i32 }

@Audit_equal = common dso_local global i32 0, align 4
@Audit_not_equal = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@root_ns = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_audit_rule_init(i32 %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.aa_audit_rule*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %24 [
    i32 128, label %12
  ]

12:                                               ; preds = %4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @Audit_equal, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @Audit_not_equal, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %61

23:                                               ; preds = %16, %12
  br label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %61

27:                                               ; preds = %23
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.aa_audit_rule* @kzalloc(i32 4, i32 %28)
  store %struct.aa_audit_rule* %29, %struct.aa_audit_rule** %10, align 8
  %30 = load %struct.aa_audit_rule*, %struct.aa_audit_rule** %10, align 8
  %31 = icmp ne %struct.aa_audit_rule* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %61

35:                                               ; preds = %27
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @root_ns, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i32 @aa_label_parse(i32* %39, i8* %40, i32 %41, i32 1, i32 0)
  %43 = load %struct.aa_audit_rule*, %struct.aa_audit_rule** %10, align 8
  %44 = getelementptr inbounds %struct.aa_audit_rule, %struct.aa_audit_rule* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.aa_audit_rule*, %struct.aa_audit_rule** %10, align 8
  %46 = getelementptr inbounds %struct.aa_audit_rule, %struct.aa_audit_rule* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @IS_ERR(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %35
  %51 = load %struct.aa_audit_rule*, %struct.aa_audit_rule** %10, align 8
  %52 = call i32 @aa_audit_rule_free(%struct.aa_audit_rule* %51)
  %53 = load %struct.aa_audit_rule*, %struct.aa_audit_rule** %10, align 8
  %54 = getelementptr inbounds %struct.aa_audit_rule, %struct.aa_audit_rule* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @PTR_ERR(i32 %55)
  store i32 %56, i32* %5, align 4
  br label %61

57:                                               ; preds = %35
  %58 = load %struct.aa_audit_rule*, %struct.aa_audit_rule** %10, align 8
  %59 = bitcast %struct.aa_audit_rule* %58 to i8*
  %60 = load i8**, i8*** %9, align 8
  store i8* %59, i8** %60, align 8
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %57, %50, %32, %24, %20
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local %struct.aa_audit_rule* @kzalloc(i32, i32) #1

declare dso_local i32 @aa_label_parse(i32*, i8*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @aa_audit_rule_free(%struct.aa_audit_rule*) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
