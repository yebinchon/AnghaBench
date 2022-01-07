; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_keyring.c_key_move.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_keyring.c_key_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32, i32 }
%struct.assoc_array_edit = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"%d,%d,%d\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@KEYCTL_MOVE_EXCL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @key_move(%struct.key* %0, %struct.key* %1, %struct.key* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.key*, align 8
  %7 = alloca %struct.key*, align 8
  %8 = alloca %struct.key*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.assoc_array_edit*, align 8
  %11 = alloca %struct.assoc_array_edit*, align 8
  %12 = alloca i32, align 4
  store %struct.key* %0, %struct.key** %6, align 8
  store %struct.key* %1, %struct.key** %7, align 8
  store %struct.key* %2, %struct.key** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.assoc_array_edit* null, %struct.assoc_array_edit** %10, align 8
  store %struct.assoc_array_edit* null, %struct.assoc_array_edit** %11, align 8
  %13 = load %struct.key*, %struct.key** %6, align 8
  %14 = getelementptr inbounds %struct.key, %struct.key* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.key*, %struct.key** %7, align 8
  %17 = getelementptr inbounds %struct.key, %struct.key* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.key*, %struct.key** %8, align 8
  %20 = getelementptr inbounds %struct.key, %struct.key* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @kenter(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i32 %21)
  %23 = load %struct.key*, %struct.key** %7, align 8
  %24 = load %struct.key*, %struct.key** %8, align 8
  %25 = icmp eq %struct.key* %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %104

27:                                               ; preds = %4
  %28 = load %struct.key*, %struct.key** %6, align 8
  %29 = call i32 @key_check(%struct.key* %28)
  %30 = load %struct.key*, %struct.key** %7, align 8
  %31 = call i32 @key_check(%struct.key* %30)
  %32 = load %struct.key*, %struct.key** %8, align 8
  %33 = call i32 @key_check(%struct.key* %32)
  %34 = load %struct.key*, %struct.key** %7, align 8
  %35 = load %struct.key*, %struct.key** %8, align 8
  %36 = load %struct.key*, %struct.key** %6, align 8
  %37 = getelementptr inbounds %struct.key, %struct.key* %36, i32 0, i32 0
  %38 = call i32 @__key_move_lock(%struct.key* %34, %struct.key* %35, i32* %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  br label %100

42:                                               ; preds = %27
  %43 = load %struct.key*, %struct.key** %7, align 8
  %44 = load %struct.key*, %struct.key** %6, align 8
  %45 = call i32 @__key_unlink_begin(%struct.key* %43, %struct.key* %44, %struct.assoc_array_edit** %10)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %90

49:                                               ; preds = %42
  %50 = load %struct.key*, %struct.key** %8, align 8
  %51 = load %struct.key*, %struct.key** %6, align 8
  %52 = getelementptr inbounds %struct.key, %struct.key* %51, i32 0, i32 0
  %53 = call i32 @__key_link_begin(%struct.key* %50, i32* %52, %struct.assoc_array_edit** %11)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %90

57:                                               ; preds = %49
  %58 = load i32, i32* @EEXIST, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %12, align 4
  %60 = load %struct.assoc_array_edit*, %struct.assoc_array_edit** %11, align 8
  %61 = getelementptr inbounds %struct.assoc_array_edit, %struct.assoc_array_edit* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @KEYCTL_MOVE_EXCL, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %90

70:                                               ; preds = %64, %57
  %71 = load %struct.key*, %struct.key** %8, align 8
  %72 = load %struct.key*, %struct.key** %6, align 8
  %73 = call i32 @__key_link_check_restriction(%struct.key* %71, %struct.key* %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %90

77:                                               ; preds = %70
  %78 = load %struct.key*, %struct.key** %8, align 8
  %79 = load %struct.key*, %struct.key** %6, align 8
  %80 = call i32 @__key_link_check_live_key(%struct.key* %78, %struct.key* %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %90

84:                                               ; preds = %77
  %85 = load %struct.key*, %struct.key** %7, align 8
  %86 = load %struct.key*, %struct.key** %6, align 8
  %87 = call i32 @__key_unlink(%struct.key* %85, %struct.key* %86, %struct.assoc_array_edit** %10)
  %88 = load %struct.key*, %struct.key** %6, align 8
  %89 = call i32 @__key_link(%struct.key* %88, %struct.assoc_array_edit** %11)
  br label %90

90:                                               ; preds = %84, %83, %76, %69, %56, %48
  %91 = load %struct.key*, %struct.key** %8, align 8
  %92 = load %struct.key*, %struct.key** %6, align 8
  %93 = getelementptr inbounds %struct.key, %struct.key* %92, i32 0, i32 0
  %94 = load %struct.assoc_array_edit*, %struct.assoc_array_edit** %11, align 8
  %95 = call i32 @__key_link_end(%struct.key* %91, i32* %93, %struct.assoc_array_edit* %94)
  %96 = load %struct.key*, %struct.key** %7, align 8
  %97 = load %struct.key*, %struct.key** %6, align 8
  %98 = load %struct.assoc_array_edit*, %struct.assoc_array_edit** %10, align 8
  %99 = call i32 @__key_unlink_end(%struct.key* %96, %struct.key* %97, %struct.assoc_array_edit* %98)
  br label %100

100:                                              ; preds = %90, %41
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @kleave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* %12, align 4
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %100, %26
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @kenter(i8*, i32, i32, i32) #1

declare dso_local i32 @key_check(%struct.key*) #1

declare dso_local i32 @__key_move_lock(%struct.key*, %struct.key*, i32*) #1

declare dso_local i32 @__key_unlink_begin(%struct.key*, %struct.key*, %struct.assoc_array_edit**) #1

declare dso_local i32 @__key_link_begin(%struct.key*, i32*, %struct.assoc_array_edit**) #1

declare dso_local i32 @__key_link_check_restriction(%struct.key*, %struct.key*) #1

declare dso_local i32 @__key_link_check_live_key(%struct.key*, %struct.key*) #1

declare dso_local i32 @__key_unlink(%struct.key*, %struct.key*, %struct.assoc_array_edit**) #1

declare dso_local i32 @__key_link(%struct.key*, %struct.assoc_array_edit**) #1

declare dso_local i32 @__key_link_end(%struct.key*, i32*, %struct.assoc_array_edit*) #1

declare dso_local i32 @__key_unlink_end(%struct.key*, %struct.key*, %struct.assoc_array_edit*) #1

declare dso_local i32 @kleave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
