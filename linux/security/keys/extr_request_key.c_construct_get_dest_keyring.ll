; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_request_key.c_construct_get_dest_keyring.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_request_key.c_construct_get_dest_keyring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32, i32 }
%struct.request_key_auth = type { %struct.key* }
%struct.cred = type { i32, %struct.key*, %struct.key*, %struct.key*, %struct.key* }

@.str = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@KEY_FLAG_REVOKED = common dso_local global i32 0, align 4
@KEY_NEED_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c" [dk %d]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.key**)* @construct_get_dest_keyring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @construct_get_dest_keyring(%struct.key** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.key**, align 8
  %4 = alloca %struct.request_key_auth*, align 8
  %5 = alloca %struct.cred*, align 8
  %6 = alloca %struct.key*, align 8
  %7 = alloca %struct.key*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.key** %0, %struct.key*** %3, align 8
  %10 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %10, %struct.cred** %5, align 8
  %11 = load %struct.key**, %struct.key*** %3, align 8
  %12 = load %struct.key*, %struct.key** %11, align 8
  store %struct.key* %12, %struct.key** %6, align 8
  %13 = load %struct.key*, %struct.key** %6, align 8
  %14 = call i32 @kenter(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.key* %13)
  %15 = load %struct.key*, %struct.key** %6, align 8
  %16 = icmp ne %struct.key* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.key*, %struct.key** %6, align 8
  %19 = call %struct.key* @key_get(%struct.key* %18)
  br label %120

20:                                               ; preds = %1
  store i32 1, i32* %9, align 4
  %21 = load %struct.cred*, %struct.cred** %5, align 8
  %22 = getelementptr inbounds %struct.cred, %struct.cred* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %99 [
    i32 135, label %24
    i32 132, label %24
    i32 130, label %57
    i32 133, label %66
    i32 131, label %75
    i32 128, label %84
    i32 129, label %91
    i32 134, label %98
  ]

24:                                               ; preds = %20, %20
  %25 = load %struct.cred*, %struct.cred** %5, align 8
  %26 = getelementptr inbounds %struct.cred, %struct.cred* %25, i32 0, i32 4
  %27 = load %struct.key*, %struct.key** %26, align 8
  %28 = icmp ne %struct.key* %27, null
  br i1 %28, label %29, label %56

29:                                               ; preds = %24
  %30 = load %struct.cred*, %struct.cred** %5, align 8
  %31 = getelementptr inbounds %struct.cred, %struct.cred* %30, i32 0, i32 4
  %32 = load %struct.key*, %struct.key** %31, align 8
  store %struct.key* %32, %struct.key** %7, align 8
  %33 = load %struct.key*, %struct.key** %7, align 8
  %34 = getelementptr inbounds %struct.key, %struct.key* %33, i32 0, i32 0
  %35 = call i32 @down_read(i32* %34)
  %36 = load %struct.key*, %struct.key** %7, align 8
  %37 = call %struct.request_key_auth* @get_request_key_auth(%struct.key* %36)
  store %struct.request_key_auth* %37, %struct.request_key_auth** %4, align 8
  %38 = load i32, i32* @KEY_FLAG_REVOKED, align 4
  %39 = load %struct.key*, %struct.key** %7, align 8
  %40 = getelementptr inbounds %struct.key, %struct.key* %39, i32 0, i32 1
  %41 = call i32 @test_bit(i32 %38, i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %29
  %44 = load %struct.request_key_auth*, %struct.request_key_auth** %4, align 8
  %45 = getelementptr inbounds %struct.request_key_auth, %struct.request_key_auth* %44, i32 0, i32 0
  %46 = load %struct.key*, %struct.key** %45, align 8
  %47 = call %struct.key* @key_get(%struct.key* %46)
  store %struct.key* %47, %struct.key** %6, align 8
  br label %48

48:                                               ; preds = %43, %29
  %49 = load %struct.key*, %struct.key** %7, align 8
  %50 = getelementptr inbounds %struct.key, %struct.key* %49, i32 0, i32 0
  %51 = call i32 @up_read(i32* %50)
  %52 = load %struct.key*, %struct.key** %6, align 8
  %53 = icmp ne %struct.key* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 0, i32* %9, align 4
  br label %101

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %24
  br label %57

57:                                               ; preds = %20, %56
  %58 = load %struct.cred*, %struct.cred** %5, align 8
  %59 = getelementptr inbounds %struct.cred, %struct.cred* %58, i32 0, i32 3
  %60 = load %struct.key*, %struct.key** %59, align 8
  %61 = call %struct.key* @key_get(%struct.key* %60)
  store %struct.key* %61, %struct.key** %6, align 8
  %62 = load %struct.key*, %struct.key** %6, align 8
  %63 = icmp ne %struct.key* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %101

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %20, %65
  %67 = load %struct.cred*, %struct.cred** %5, align 8
  %68 = getelementptr inbounds %struct.cred, %struct.cred* %67, i32 0, i32 2
  %69 = load %struct.key*, %struct.key** %68, align 8
  %70 = call %struct.key* @key_get(%struct.key* %69)
  store %struct.key* %70, %struct.key** %6, align 8
  %71 = load %struct.key*, %struct.key** %6, align 8
  %72 = icmp ne %struct.key* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %101

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %20, %74
  %76 = load %struct.cred*, %struct.cred** %5, align 8
  %77 = getelementptr inbounds %struct.cred, %struct.cred* %76, i32 0, i32 1
  %78 = load %struct.key*, %struct.key** %77, align 8
  %79 = call %struct.key* @key_get(%struct.key* %78)
  store %struct.key* %79, %struct.key** %6, align 8
  %80 = load %struct.key*, %struct.key** %6, align 8
  %81 = icmp ne %struct.key* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %101

83:                                               ; preds = %75
  br label %84

84:                                               ; preds = %20, %83
  %85 = call i32 @look_up_user_keyrings(%struct.key** null, %struct.key** %6)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %2, align 4
  br label %126

90:                                               ; preds = %84
  br label %101

91:                                               ; preds = %20
  %92 = call i32 @look_up_user_keyrings(%struct.key** %6, %struct.key** null)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load i32, i32* %8, align 4
  store i32 %96, i32* %2, align 4
  br label %126

97:                                               ; preds = %91
  br label %101

98:                                               ; preds = %20
  br label %99

99:                                               ; preds = %20, %98
  %100 = call i32 (...) @BUG()
  br label %101

101:                                              ; preds = %99, %97, %90, %82, %73, %64, %54
  %102 = load %struct.key*, %struct.key** %6, align 8
  %103 = icmp ne %struct.key* %102, null
  br i1 %103, label %104, label %119

104:                                              ; preds = %101
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %104
  %108 = load %struct.key*, %struct.key** %6, align 8
  %109 = call i32 @make_key_ref(%struct.key* %108, i32 1)
  %110 = load i32, i32* @KEY_NEED_WRITE, align 4
  %111 = call i32 @key_permission(i32 %109, i32 %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %107
  %115 = load %struct.key*, %struct.key** %6, align 8
  %116 = call i32 @key_put(%struct.key* %115)
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %2, align 4
  br label %126

118:                                              ; preds = %107
  br label %119

119:                                              ; preds = %118, %104, %101
  br label %120

120:                                              ; preds = %119, %17
  %121 = load %struct.key*, %struct.key** %6, align 8
  %122 = load %struct.key**, %struct.key*** %3, align 8
  store %struct.key* %121, %struct.key** %122, align 8
  %123 = load %struct.key*, %struct.key** %6, align 8
  %124 = call i32 @key_serial(%struct.key* %123)
  %125 = call i32 @kleave(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %124)
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %120, %114, %95, %88
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i32 @kenter(i8*, %struct.key*) #1

declare dso_local %struct.key* @key_get(%struct.key*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.request_key_auth* @get_request_key_auth(%struct.key*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @look_up_user_keyrings(%struct.key**, %struct.key**) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @key_permission(i32, i32) #1

declare dso_local i32 @make_key_ref(%struct.key*, i32) #1

declare dso_local i32 @key_put(%struct.key*) #1

declare dso_local i32 @kleave(i8*, i32) #1

declare dso_local i32 @key_serial(%struct.key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
