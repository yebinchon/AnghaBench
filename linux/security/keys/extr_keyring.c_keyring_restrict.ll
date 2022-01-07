; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_keyring.c_keyring_restrict.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_keyring.c_keyring_restrict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32, %struct.key_type*, i32* }
%struct.key_type = type { i32, %struct.key_type* (i8*)* }
%struct.key_restriction = type { i32, %struct.key_type* (i8*)* }

@key_type_keyring = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4
@restrict_link_reject = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@keyring_serialise_restrict_sem = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@EDEADLK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @keyring_restrict(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.key*, align 8
  %9 = alloca %struct.key_type*, align 8
  %10 = alloca %struct.key_restriction*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.key_type* null, %struct.key_type** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.key* @key_ref_to_ptr(i32 %12)
  store %struct.key* %13, %struct.key** %8, align 8
  %14 = load %struct.key*, %struct.key** %8, align 8
  %15 = call i32 @key_check(%struct.key* %14)
  %16 = load %struct.key*, %struct.key** %8, align 8
  %17 = getelementptr inbounds %struct.key, %struct.key* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, @key_type_keyring
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOTDIR, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %114

23:                                               ; preds = %3
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @restrict_link_reject, align 4
  %28 = call %struct.key_type* @keyring_restriction_alloc(i32 %27)
  %29 = bitcast %struct.key_type* %28 to %struct.key_restriction*
  store %struct.key_restriction* %29, %struct.key_restriction** %10, align 8
  br label %54

30:                                               ; preds = %23
  %31 = load i8*, i8** %6, align 8
  %32 = call %struct.key_type* @key_type_lookup(i8* %31)
  store %struct.key_type* %32, %struct.key_type** %9, align 8
  %33 = load %struct.key_type*, %struct.key_type** %9, align 8
  %34 = call i64 @IS_ERR(%struct.key_type* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.key_type*, %struct.key_type** %9, align 8
  %38 = call i32 @PTR_ERR(%struct.key_type* %37)
  store i32 %38, i32* %4, align 4
  br label %114

39:                                               ; preds = %30
  %40 = load %struct.key_type*, %struct.key_type** %9, align 8
  %41 = getelementptr inbounds %struct.key_type, %struct.key_type* %40, i32 0, i32 1
  %42 = load %struct.key_type* (i8*)*, %struct.key_type* (i8*)** %41, align 8
  %43 = icmp ne %struct.key_type* (i8*)* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @ENOENT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %11, align 4
  br label %106

47:                                               ; preds = %39
  %48 = load %struct.key_type*, %struct.key_type** %9, align 8
  %49 = getelementptr inbounds %struct.key_type, %struct.key_type* %48, i32 0, i32 1
  %50 = load %struct.key_type* (i8*)*, %struct.key_type* (i8*)** %49, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = call %struct.key_type* %50(i8* %51)
  %53 = bitcast %struct.key_type* %52 to %struct.key_restriction*
  store %struct.key_restriction* %53, %struct.key_restriction** %10, align 8
  br label %54

54:                                               ; preds = %47, %26
  %55 = load %struct.key_restriction*, %struct.key_restriction** %10, align 8
  %56 = bitcast %struct.key_restriction* %55 to %struct.key_type*
  %57 = call i64 @IS_ERR(%struct.key_type* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.key_restriction*, %struct.key_restriction** %10, align 8
  %61 = bitcast %struct.key_restriction* %60 to %struct.key_type*
  %62 = call i32 @PTR_ERR(%struct.key_type* %61)
  store i32 %62, i32* %11, align 4
  br label %106

63:                                               ; preds = %54
  %64 = load %struct.key*, %struct.key** %8, align 8
  %65 = getelementptr inbounds %struct.key, %struct.key* %64, i32 0, i32 0
  %66 = call i32 @down_write(i32* %65)
  %67 = call i32 @down_write(i32* @keyring_serialise_restrict_sem)
  %68 = load %struct.key*, %struct.key** %8, align 8
  %69 = getelementptr inbounds %struct.key, %struct.key* %68, i32 0, i32 1
  %70 = load %struct.key_type*, %struct.key_type** %69, align 8
  %71 = icmp ne %struct.key_type* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %63
  %73 = load i32, i32* @EEXIST, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %11, align 4
  br label %90

75:                                               ; preds = %63
  %76 = load %struct.key*, %struct.key** %8, align 8
  %77 = load %struct.key_restriction*, %struct.key_restriction** %10, align 8
  %78 = bitcast %struct.key_restriction* %77 to %struct.key_type*
  %79 = call i64 @keyring_detect_restriction_cycle(%struct.key* %76, %struct.key_type* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load i32, i32* @EDEADLK, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %11, align 4
  br label %89

84:                                               ; preds = %75
  %85 = load %struct.key_restriction*, %struct.key_restriction** %10, align 8
  %86 = bitcast %struct.key_restriction* %85 to %struct.key_type*
  %87 = load %struct.key*, %struct.key** %8, align 8
  %88 = getelementptr inbounds %struct.key, %struct.key* %87, i32 0, i32 1
  store %struct.key_type* %86, %struct.key_type** %88, align 8
  br label %89

89:                                               ; preds = %84, %81
  br label %90

90:                                               ; preds = %89, %72
  %91 = call i32 @up_write(i32* @keyring_serialise_restrict_sem)
  %92 = load %struct.key*, %struct.key** %8, align 8
  %93 = getelementptr inbounds %struct.key, %struct.key* %92, i32 0, i32 0
  %94 = call i32 @up_write(i32* %93)
  %95 = load i32, i32* %11, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %90
  %98 = load %struct.key_restriction*, %struct.key_restriction** %10, align 8
  %99 = getelementptr inbounds %struct.key_restriction, %struct.key_restriction* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @key_put(i32 %100)
  %102 = load %struct.key_restriction*, %struct.key_restriction** %10, align 8
  %103 = bitcast %struct.key_restriction* %102 to %struct.key_type*
  %104 = call i32 @kfree(%struct.key_type* %103)
  br label %105

105:                                              ; preds = %97, %90
  br label %106

106:                                              ; preds = %105, %59, %44
  %107 = load %struct.key_type*, %struct.key_type** %9, align 8
  %108 = icmp ne %struct.key_type* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load %struct.key_type*, %struct.key_type** %9, align 8
  %111 = call i32 @key_type_put(%struct.key_type* %110)
  br label %112

112:                                              ; preds = %109, %106
  %113 = load i32, i32* %11, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %112, %36, %20
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local %struct.key* @key_ref_to_ptr(i32) #1

declare dso_local i32 @key_check(%struct.key*) #1

declare dso_local %struct.key_type* @keyring_restriction_alloc(i32) #1

declare dso_local %struct.key_type* @key_type_lookup(i8*) #1

declare dso_local i64 @IS_ERR(%struct.key_type*) #1

declare dso_local i32 @PTR_ERR(%struct.key_type*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @keyring_detect_restriction_cycle(%struct.key*, %struct.key_type*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @key_put(i32) #1

declare dso_local i32 @kfree(%struct.key_type*) #1

declare dso_local i32 @key_type_put(%struct.key_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
