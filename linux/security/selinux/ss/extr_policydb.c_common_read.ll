; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_common_read.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_common_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { i32 }
%struct.hashtab = type { i32 }
%struct.common_datum = type { %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PERM_SYMTAB_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.policydb*, %struct.hashtab*, i8*)* @common_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @common_read(%struct.policydb* %0, %struct.hashtab* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.policydb*, align 8
  %6 = alloca %struct.hashtab*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.common_datum*, align 8
  %10 = alloca [4 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.policydb* %0, %struct.policydb** %5, align 8
  store %struct.hashtab* %1, %struct.hashtab** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.common_datum* @kzalloc(i32 24, i32 %15)
  store %struct.common_datum* %16, %struct.common_datum** %9, align 8
  %17 = load %struct.common_datum*, %struct.common_datum** %9, align 8
  %18 = icmp ne %struct.common_datum* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %98

22:                                               ; preds = %3
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @next_entry(i32* %23, i8* %24, i32 16)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %93

29:                                               ; preds = %22
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %31 = load i32, i32* %30, align 16
  %32 = call i8* @le32_to_cpu(i32 %31)
  %33 = ptrtoint i8* %32 to i32
  store i32 %33, i32* %11, align 4
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @le32_to_cpu(i32 %35)
  %37 = load %struct.common_datum*, %struct.common_datum** %9, align 8
  %38 = getelementptr inbounds %struct.common_datum, %struct.common_datum* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load %struct.common_datum*, %struct.common_datum** %9, align 8
  %40 = getelementptr inbounds %struct.common_datum, %struct.common_datum* %39, i32 0, i32 0
  %41 = load i32, i32* @PERM_SYMTAB_SIZE, align 4
  %42 = call i32 @symtab_init(%struct.TYPE_2__* %40, i32 %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %29
  br label %93

46:                                               ; preds = %29
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  %48 = load i32, i32* %47, align 8
  %49 = call i8* @le32_to_cpu(i32 %48)
  %50 = load %struct.common_datum*, %struct.common_datum** %9, align 8
  %51 = getelementptr inbounds %struct.common_datum, %struct.common_datum* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i8* %49, i8** %52, align 8
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @le32_to_cpu(i32 %54)
  %56 = ptrtoint i8* %55 to i32
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = load i8*, i8** %7, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @str_read(i8** %8, i32 %57, i8* %58, i32 %59)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %46
  br label %93

64:                                               ; preds = %46
  store i32 0, i32* %13, align 4
  br label %65

65:                                               ; preds = %81, %64
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %65
  %70 = load %struct.policydb*, %struct.policydb** %5, align 8
  %71 = load %struct.common_datum*, %struct.common_datum** %9, align 8
  %72 = getelementptr inbounds %struct.common_datum, %struct.common_datum* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @perm_read(%struct.policydb* %70, i32 %74, i8* %75)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %69
  br label %93

80:                                               ; preds = %69
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %13, align 4
  br label %65

84:                                               ; preds = %65
  %85 = load %struct.hashtab*, %struct.hashtab** %6, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = load %struct.common_datum*, %struct.common_datum** %9, align 8
  %88 = call i32 @hashtab_insert(%struct.hashtab* %85, i8* %86, %struct.common_datum* %87)
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %14, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  br label %93

92:                                               ; preds = %84
  store i32 0, i32* %4, align 4
  br label %98

93:                                               ; preds = %91, %79, %63, %45, %28
  %94 = load i8*, i8** %8, align 8
  %95 = load %struct.common_datum*, %struct.common_datum** %9, align 8
  %96 = call i32 @common_destroy(i8* %94, %struct.common_datum* %95, i32* null)
  %97 = load i32, i32* %14, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %93, %92, %19
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local %struct.common_datum* @kzalloc(i32, i32) #1

declare dso_local i32 @next_entry(i32*, i8*, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @symtab_init(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @str_read(i8**, i32, i8*, i32) #1

declare dso_local i32 @perm_read(%struct.policydb*, i32, i8*) #1

declare dso_local i32 @hashtab_insert(%struct.hashtab*, i8*, %struct.common_datum*) #1

declare dso_local i32 @common_destroy(i8*, %struct.common_datum*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
