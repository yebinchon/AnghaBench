; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_debugobjects.c_debug_object_activate.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_debugobjects.c_debug_object_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_obj_descr = type { i32, i64 (i8*)* }
%struct.debug_bucket = type { i32 }
%struct.debug_obj = type { i8*, i32, %struct.debug_obj_descr* }

@ODEBUG_STATE_NOTAVAILABLE = common dso_local global i32 0, align 4
@debug_objects_enabled = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"activate\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @debug_object_activate(i8* %0, %struct.debug_obj_descr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.debug_obj_descr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.debug_bucket*, align 8
  %8 = alloca %struct.debug_obj*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.debug_obj, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.debug_obj_descr* %1, %struct.debug_obj_descr** %5, align 8
  %13 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %11, i32 0, i32 0
  %14 = load i8*, i8** %4, align 8
  store i8* %14, i8** %13, align 8
  %15 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %11, i32 0, i32 1
  %16 = load i32, i32* @ODEBUG_STATE_NOTAVAILABLE, align 4
  store i32 %16, i32* %15, align 8
  %17 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %11, i32 0, i32 2
  %18 = load %struct.debug_obj_descr*, %struct.debug_obj_descr** %5, align 8
  store %struct.debug_obj_descr* %18, %struct.debug_obj_descr** %17, align 8
  %19 = load i32, i32* @debug_objects_enabled, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %122

22:                                               ; preds = %2
  %23 = load i8*, i8** %4, align 8
  %24 = ptrtoint i8* %23 to i64
  %25 = call %struct.debug_bucket* @get_bucket(i64 %24)
  store %struct.debug_bucket* %25, %struct.debug_bucket** %7, align 8
  %26 = load %struct.debug_bucket*, %struct.debug_bucket** %7, align 8
  %27 = getelementptr inbounds %struct.debug_bucket, %struct.debug_bucket* %26, i32 0, i32 0
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @raw_spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load i8*, i8** %4, align 8
  %31 = load %struct.debug_bucket*, %struct.debug_bucket** %7, align 8
  %32 = call %struct.debug_obj* @lookup_object(i8* %30, %struct.debug_bucket* %31)
  store %struct.debug_obj* %32, %struct.debug_obj** %8, align 8
  %33 = load %struct.debug_obj*, %struct.debug_obj** %8, align 8
  %34 = icmp ne %struct.debug_obj* %33, null
  br i1 %34, label %35, label %82

35:                                               ; preds = %22
  store i32 0, i32* %12, align 4
  %36 = load %struct.debug_obj*, %struct.debug_obj** %8, align 8
  %37 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %69 [
    i32 128, label %39
    i32 129, label %39
    i32 131, label %42
    i32 130, label %66
  ]

39:                                               ; preds = %35, %35
  %40 = load %struct.debug_obj*, %struct.debug_obj** %8, align 8
  %41 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %40, i32 0, i32 1
  store i32 131, i32* %41, align 8
  store i32 0, i32* %10, align 4
  br label %70

42:                                               ; preds = %35
  %43 = load %struct.debug_obj*, %struct.debug_obj** %8, align 8
  %44 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %6, align 4
  %46 = load %struct.debug_bucket*, %struct.debug_bucket** %7, align 8
  %47 = getelementptr inbounds %struct.debug_bucket, %struct.debug_bucket* %46, i32 0, i32 0
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @raw_spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = load %struct.debug_obj*, %struct.debug_obj** %8, align 8
  %51 = call i32 @debug_print_object(%struct.debug_obj* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.debug_obj_descr*, %struct.debug_obj_descr** %5, align 8
  %53 = getelementptr inbounds %struct.debug_obj_descr, %struct.debug_obj_descr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @debug_object_fixup(i32 %54, i8* %55, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %42
  br label %64

61:                                               ; preds = %42
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  br label %64

64:                                               ; preds = %61, %60
  %65 = phi i32 [ 0, %60 ], [ %63, %61 ]
  store i32 %65, i32* %3, align 4
  br label %122

66:                                               ; preds = %35
  store i32 1, i32* %12, align 4
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %10, align 4
  br label %70

69:                                               ; preds = %35
  store i32 0, i32* %10, align 4
  br label %70

70:                                               ; preds = %69, %66, %39
  %71 = load %struct.debug_bucket*, %struct.debug_bucket** %7, align 8
  %72 = getelementptr inbounds %struct.debug_bucket, %struct.debug_bucket* %71, i32 0, i32 0
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @raw_spin_unlock_irqrestore(i32* %72, i64 %73)
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load %struct.debug_obj*, %struct.debug_obj** %8, align 8
  %79 = call i32 @debug_print_object(%struct.debug_obj* %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %80

80:                                               ; preds = %77, %70
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %3, align 4
  br label %122

82:                                               ; preds = %22
  %83 = load %struct.debug_bucket*, %struct.debug_bucket** %7, align 8
  %84 = getelementptr inbounds %struct.debug_bucket, %struct.debug_bucket* %83, i32 0, i32 0
  %85 = load i64, i64* %9, align 8
  %86 = call i32 @raw_spin_unlock_irqrestore(i32* %84, i64 %85)
  %87 = load %struct.debug_obj_descr*, %struct.debug_obj_descr** %5, align 8
  %88 = getelementptr inbounds %struct.debug_obj_descr, %struct.debug_obj_descr* %87, i32 0, i32 1
  %89 = load i64 (i8*)*, i64 (i8*)** %88, align 8
  %90 = icmp ne i64 (i8*)* %89, null
  br i1 %90, label %91, label %105

91:                                               ; preds = %82
  %92 = load %struct.debug_obj_descr*, %struct.debug_obj_descr** %5, align 8
  %93 = getelementptr inbounds %struct.debug_obj_descr, %struct.debug_obj_descr* %92, i32 0, i32 1
  %94 = load i64 (i8*)*, i64 (i8*)** %93, align 8
  %95 = load i8*, i8** %4, align 8
  %96 = call i64 %94(i8* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %91
  %99 = load i8*, i8** %4, align 8
  %100 = load %struct.debug_obj_descr*, %struct.debug_obj_descr** %5, align 8
  %101 = call i32 @debug_object_init(i8* %99, %struct.debug_obj_descr* %100)
  %102 = load i8*, i8** %4, align 8
  %103 = load %struct.debug_obj_descr*, %struct.debug_obj_descr** %5, align 8
  %104 = call i32 @debug_object_activate(i8* %102, %struct.debug_obj_descr* %103)
  br label %121

105:                                              ; preds = %91, %82
  %106 = call i32 @debug_print_object(%struct.debug_obj* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %107 = load %struct.debug_obj_descr*, %struct.debug_obj_descr** %5, align 8
  %108 = getelementptr inbounds %struct.debug_obj_descr, %struct.debug_obj_descr* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i8*, i8** %4, align 8
  %111 = load i32, i32* @ODEBUG_STATE_NOTAVAILABLE, align 4
  %112 = call i32 @debug_object_fixup(i32 %109, i8* %110, i32 %111)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %105
  br label %119

116:                                              ; preds = %105
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  br label %119

119:                                              ; preds = %116, %115
  %120 = phi i32 [ 0, %115 ], [ %118, %116 ]
  store i32 %120, i32* %3, align 4
  br label %122

121:                                              ; preds = %98
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %121, %119, %80, %64, %21
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local %struct.debug_bucket* @get_bucket(i64) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.debug_obj* @lookup_object(i8*, %struct.debug_bucket*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @debug_print_object(%struct.debug_obj*, i8*) #1

declare dso_local i32 @debug_object_fixup(i32, i8*, i32) #1

declare dso_local i32 @debug_object_init(i8*, %struct.debug_obj_descr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
