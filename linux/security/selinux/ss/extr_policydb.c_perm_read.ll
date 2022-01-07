; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_perm_read.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_perm_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { i32 }
%struct.hashtab = type { i32 }
%struct.perm_datum = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.policydb*, %struct.hashtab*, i8*)* @perm_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perm_read(%struct.policydb* %0, %struct.hashtab* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.policydb*, align 8
  %6 = alloca %struct.hashtab*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.perm_datum*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca i8*, align 8
  store %struct.policydb* %0, %struct.policydb** %5, align 8
  store %struct.hashtab* %1, %struct.hashtab** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.perm_datum* @kzalloc(i32 8, i32 %13)
  store %struct.perm_datum* %14, %struct.perm_datum** %9, align 8
  %15 = load %struct.perm_datum*, %struct.perm_datum** %9, align 8
  %16 = icmp ne %struct.perm_datum* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %57

20:                                               ; preds = %3
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @next_entry(i32* %21, i8* %22, i32 8)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %52

27:                                               ; preds = %20
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @le32_to_cpu(i32 %29)
  store i8* %30, i8** %12, align 8
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @le32_to_cpu(i32 %32)
  %34 = load %struct.perm_datum*, %struct.perm_datum** %9, align 8
  %35 = getelementptr inbounds %struct.perm_datum, %struct.perm_datum* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = call i32 @str_read(i8** %8, i32 %36, i8* %37, i8* %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %27
  br label %52

43:                                               ; preds = %27
  %44 = load %struct.hashtab*, %struct.hashtab** %6, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load %struct.perm_datum*, %struct.perm_datum** %9, align 8
  %47 = call i32 @hashtab_insert(%struct.hashtab* %44, i8* %45, %struct.perm_datum* %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %52

51:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %57

52:                                               ; preds = %50, %42, %26
  %53 = load i8*, i8** %8, align 8
  %54 = load %struct.perm_datum*, %struct.perm_datum** %9, align 8
  %55 = call i32 @perm_destroy(i8* %53, %struct.perm_datum* %54, i32* null)
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %52, %51, %17
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.perm_datum* @kzalloc(i32, i32) #1

declare dso_local i32 @next_entry(i32*, i8*, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @str_read(i8**, i32, i8*, i8*) #1

declare dso_local i32 @hashtab_insert(%struct.hashtab*, i8*, %struct.perm_datum*) #1

declare dso_local i32 @perm_destroy(i8*, %struct.perm_datum*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
