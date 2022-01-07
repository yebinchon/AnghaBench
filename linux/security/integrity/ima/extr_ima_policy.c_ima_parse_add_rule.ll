; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_policy.c_ima_parse_add_rule.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_policy.c_ima_parse_add_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ima_rule_entry = type { i32 }

@ima_parse_add_rule.op = internal constant [14 x i8] c"update_policy\00", align 1
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@AUDIT_INTEGRITY_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"-ENOMEM\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"invalid-policy\00", align 1
@ima_temp_rules = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ima_parse_add_rule(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ima_rule_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %8, align 4
  %9 = call i8* @strsep(i8** %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %9, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @strlen(i8* %10)
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %7, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @strspn(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i8*, i8** %4, align 8
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  store i8* %17, i8** %4, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 35
  br i1 %21, label %27, label %22

22:                                               ; preds = %1
  %23 = load i8*, i8** %4, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22, %1
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %2, align 4
  br label %64

29:                                               ; preds = %22
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.ima_rule_entry* @kzalloc(i32 4, i32 %30)
  store %struct.ima_rule_entry* %31, %struct.ima_rule_entry** %5, align 8
  %32 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %5, align 8
  %33 = icmp ne %struct.ima_rule_entry* %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @AUDIT_INTEGRITY_STATUS, align 4
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @integrity_audit_msg(i32 %35, i32* null, i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @ima_parse_add_rule.op, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %64

42:                                               ; preds = %29
  %43 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %5, align 8
  %44 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %43, i32 0, i32 0
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  %46 = load i8*, i8** %4, align 8
  %47 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %5, align 8
  %48 = call i32 @ima_parse_rule(i8* %46, %struct.ima_rule_entry* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %42
  %52 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %5, align 8
  %53 = call i32 @kfree(%struct.ima_rule_entry* %52)
  %54 = load i32, i32* @AUDIT_INTEGRITY_STATUS, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @integrity_audit_msg(i32 %54, i32* null, i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @ima_parse_add_rule.op, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %55, i32 %56)
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %2, align 4
  br label %64

59:                                               ; preds = %42
  %60 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %5, align 8
  %61 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %60, i32 0, i32 0
  %62 = call i32 @list_add_tail(i32* %61, i32* @ima_temp_rules)
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %59, %51, %34, %27
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strspn(i8*, i8*) #1

declare dso_local %struct.ima_rule_entry* @kzalloc(i32, i32) #1

declare dso_local i32 @integrity_audit_msg(i32, i32*, i32*, i8*, i8*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ima_parse_rule(i8*, %struct.ima_rule_entry*) #1

declare dso_local i32 @kfree(%struct.ima_rule_entry*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
