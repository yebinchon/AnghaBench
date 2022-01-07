; ModuleID = '/home/carl/AnghaBench/linux/kernel/livepatch/extr_core.c_klp_resolve_symbols.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/livepatch/extr_core.c_klp_resolve_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }
%struct.module = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32, i64 }
%struct.TYPE_9__ = type { i32 }

@MODULE_NAME_LEN = common dso_local global i32 0, align 4
@KSYM_NAME_LEN = common dso_local global i32 0, align 4
@SHN_LIVEPATCH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"symbol %s is not marked as a livepatch symbol\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c".klp.sym.%55[^.].%127[^,],%lu\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"symbol %s has an incorrectly formatted name\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"vmlinux\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.module*)* @klp_resolve_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @klp_resolve_symbols(%struct.TYPE_8__* %0, %struct.module* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.module*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.module* %1, %struct.module** %5, align 8
  %19 = load i32, i32* @MODULE_NAME_LEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %10, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  %23 = load i32, i32* @KSYM_NAME_LEN, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %12, align 8
  %26 = load %struct.module*, %struct.module** %5, align 8
  %27 = getelementptr inbounds %struct.module, %struct.module* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %13, align 8
  %30 = load i32, i32* @MODULE_NAME_LEN, align 4
  %31 = icmp slt i32 %30, 56
  br i1 %31, label %35, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* @KSYM_NAME_LEN, align 4
  %34 = icmp ne i32 %33, 128
  br label %35

35:                                               ; preds = %32, %2
  %36 = phi i1 [ true, %2 ], [ %34, %32 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUILD_BUG_ON(i32 %37)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %14, align 8
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %122, %35
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = udiv i64 %49, 4
  %51 = icmp ult i64 %45, %50
  br i1 %51, label %52, label %125

52:                                               ; preds = %43
  %53 = load %struct.module*, %struct.module** %5, align 8
  %54 = getelementptr inbounds %struct.module, %struct.module* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ELF_R_SYM(i32 %62)
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i64 %64
  store %struct.TYPE_7__* %65, %struct.TYPE_7__** %15, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @SHN_LIVEPATCH, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %52
  %72 = load i8*, i8** %13, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %72, i64 %76
  %78 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %77)
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %126

81:                                               ; preds = %52
  %82 = load i8*, i8** %13, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %82, i64 %86
  %88 = call i32 @sscanf(i8* %87, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %22, i8* %25, i64* %16)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 3
  br i1 %90, label %91, label %101

91:                                               ; preds = %81
  %92 = load i8*, i8** %13, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %92, i64 %96
  %98 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* %97)
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %126

101:                                              ; preds = %81
  %102 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %101
  br label %110

109:                                              ; preds = %101
  br label %110

110:                                              ; preds = %109, %108
  %111 = phi i8* [ null, %108 ], [ %22, %109 ]
  %112 = load i64, i64* %16, align 8
  %113 = call i32 @klp_find_object_symbol(i8* %111, i8* %25, i64 %112, i64* %17)
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %110
  %117 = load i32, i32* %9, align 4
  store i32 %117, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %126

118:                                              ; preds = %110
  %119 = load i64, i64* %17, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 2
  store i64 %119, i64* %121, align 8
  br label %122

122:                                              ; preds = %118
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %6, align 4
  br label %43

125:                                              ; preds = %43
  store i32 0, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %126

126:                                              ; preds = %125, %116, %91, %71
  %127 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %127)
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BUILD_BUG_ON(i32) #2

declare dso_local i32 @ELF_R_SYM(i32) #2

declare dso_local i32 @pr_err(i8*, i8*) #2

declare dso_local i32 @sscanf(i8*, i8*, i8*, i8*, i64*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @klp_find_object_symbol(i8*, i8*, i64, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
