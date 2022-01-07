; ModuleID = '/home/carl/AnghaBench/linux/kernel/livepatch/extr_core.c_klp_write_object_relocations.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/livepatch/extr_core.c_klp_write_object_relocations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i8*, i32, %struct.TYPE_10__*, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.klp_object = type { i8* }

@MODULE_NAME_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"vmlinux\00", align 1
@SHF_RELA_LIVEPATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c".klp.rela.%55[^.]\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"section %s has an incorrectly formatted name\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module*, %struct.klp_object*)* @klp_write_object_relocations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @klp_write_object_relocations(%struct.module* %0, %struct.klp_object* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.module*, align 8
  %5 = alloca %struct.klp_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i32, align 4
  store %struct.module* %0, %struct.module** %4, align 8
  store %struct.klp_object* %1, %struct.klp_object** %5, align 8
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* @MODULE_NAME_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load %struct.klp_object*, %struct.klp_object** %5, align 8
  %20 = call i32 @klp_is_object_loaded(%struct.klp_object* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %124

29:                                               ; preds = %2
  %30 = load %struct.klp_object*, %struct.klp_object** %5, align 8
  %31 = call i64 @klp_is_module(%struct.klp_object* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load %struct.klp_object*, %struct.klp_object** %5, align 8
  %35 = getelementptr inbounds %struct.klp_object, %struct.klp_object* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  br label %38

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %33
  %39 = phi i8* [ %36, %33 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %37 ]
  store i8* %39, i8** %9, align 8
  store i32 1, i32* %6, align 4
  br label %40

40:                                               ; preds = %119, %38
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.module*, %struct.module** %4, align 8
  %43 = getelementptr inbounds %struct.module, %struct.module* %42, i32 0, i32 0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %41, %47
  br i1 %48, label %49, label %122

49:                                               ; preds = %40
  %50 = load %struct.module*, %struct.module** %4, align 8
  %51 = getelementptr inbounds %struct.module, %struct.module* %50, i32 0, i32 0
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i64 %56
  store %struct.TYPE_10__* %57, %struct.TYPE_10__** %13, align 8
  %58 = load %struct.module*, %struct.module** %4, align 8
  %59 = getelementptr inbounds %struct.module, %struct.module* %58, i32 0, i32 0
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %62, i64 %66
  store i8* %67, i8** %10, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @SHF_RELA_LIVEPATCH, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %49
  br label %119

75:                                               ; preds = %49
  %76 = load i8*, i8** %10, align 8
  %77 = call i32 @sscanf(i8* %76, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 1
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load i8*, i8** %10, align 8
  %82 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %81)
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %8, align 4
  br label %122

85:                                               ; preds = %75
  %86 = load i8*, i8** %9, align 8
  %87 = call i64 @strcmp(i8* %86, i8* %18)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  br label %119

90:                                               ; preds = %85
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %92 = load %struct.module*, %struct.module** %4, align 8
  %93 = call i32 @klp_resolve_symbols(%struct.TYPE_10__* %91, %struct.module* %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  br label %122

97:                                               ; preds = %90
  %98 = load %struct.module*, %struct.module** %4, align 8
  %99 = getelementptr inbounds %struct.module, %struct.module* %98, i32 0, i32 0
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = load %struct.module*, %struct.module** %4, align 8
  %104 = getelementptr inbounds %struct.module, %struct.module* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.module*, %struct.module** %4, align 8
  %108 = getelementptr inbounds %struct.module, %struct.module* %107, i32 0, i32 0
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = load %struct.module*, %struct.module** %4, align 8
  %114 = call i32 @apply_relocate_add(%struct.TYPE_10__* %102, i32 %106, i32 %111, i32 %112, %struct.module* %113)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %97
  br label %122

118:                                              ; preds = %97
  br label %119

119:                                              ; preds = %118, %89, %74
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %6, align 4
  br label %40

122:                                              ; preds = %117, %96, %80, %40
  %123 = load i32, i32* %8, align 4
  store i32 %123, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %124

124:                                              ; preds = %122, %26
  %125 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %125)
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @WARN_ON(i32) #2

declare dso_local i32 @klp_is_object_loaded(%struct.klp_object*) #2

declare dso_local i64 @klp_is_module(%struct.klp_object*) #2

declare dso_local i32 @sscanf(i8*, i8*, i8*) #2

declare dso_local i32 @pr_err(i8*, i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @klp_resolve_symbols(%struct.TYPE_10__*, %struct.module*) #2

declare dso_local i32 @apply_relocate_add(%struct.TYPE_10__*, i32, i32, i32, %struct.module*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
