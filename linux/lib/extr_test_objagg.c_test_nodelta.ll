; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_objagg.c_test_nodelta.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_objagg.c_test_nodelta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.world = type { i32 }
%struct.objagg = type { i32 }

@nodelta_ops = common dso_local global i32 0, align 4
@NUM_KEYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_nodelta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_nodelta() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.world, align 4
  %3 = alloca %struct.objagg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = bitcast %struct.world* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 4, i1 false)
  %7 = call %struct.objagg* @objagg_create(i32* @nodelta_ops, i32* null, %struct.world* %2)
  store %struct.objagg* %7, %struct.objagg** %3, align 8
  %8 = load %struct.objagg*, %struct.objagg** %3, align 8
  %9 = call i64 @IS_ERR(%struct.objagg* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = load %struct.objagg*, %struct.objagg** %3, align 8
  %13 = call i32 @PTR_ERR(%struct.objagg* %12)
  store i32 %13, i32* %1, align 4
  br label %138

14:                                               ; preds = %0
  %15 = load %struct.objagg*, %struct.objagg** %3, align 8
  %16 = call i32 @check_stats_zero(%struct.objagg* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %133

20:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %33, %20
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @NUM_KEYS, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load %struct.objagg*, %struct.objagg** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @test_nodelta_obj_get(%struct.world* %2, %struct.objagg* %26, i32 %27, i32 1)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %118

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %21

36:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %49, %36
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @NUM_KEYS, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load %struct.objagg*, %struct.objagg** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @test_nodelta_obj_get(%struct.world* %2, %struct.objagg* %42, i32 %43, i32 0)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %103

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %37

52:                                               ; preds = %37
  %53 = load %struct.objagg*, %struct.objagg** %3, align 8
  %54 = call i32 @check_stats_nodelta(%struct.objagg* %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %101

58:                                               ; preds = %52
  %59 = load i32, i32* @NUM_KEYS, align 4
  %60 = sub nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %72, %58
  %62 = load i32, i32* %4, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %61
  %65 = load %struct.objagg*, %struct.objagg** %3, align 8
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @test_nodelta_obj_put(%struct.world* %2, %struct.objagg* %65, i32 %66, i32 0)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %102

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %4, align 4
  br label %61

75:                                               ; preds = %61
  %76 = load i32, i32* @NUM_KEYS, align 4
  %77 = sub nsw i32 %76, 1
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %89, %75
  %79 = load i32, i32* %4, align 4
  %80 = icmp sge i32 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %78
  %82 = load %struct.objagg*, %struct.objagg** %3, align 8
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @test_nodelta_obj_put(%struct.world* %2, %struct.objagg* %82, i32 %83, i32 1)
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %119

88:                                               ; preds = %81
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %4, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %4, align 4
  br label %78

92:                                               ; preds = %78
  %93 = load %struct.objagg*, %struct.objagg** %3, align 8
  %94 = call i32 @check_stats_zero(%struct.objagg* %93)
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %5, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %134

98:                                               ; preds = %92
  %99 = load %struct.objagg*, %struct.objagg** %3, align 8
  %100 = call i32 @objagg_destroy(%struct.objagg* %99)
  store i32 0, i32* %1, align 4
  br label %138

101:                                              ; preds = %57
  br label %102

102:                                              ; preds = %101, %70
  br label %103

103:                                              ; preds = %102, %47
  %104 = load i32, i32* %4, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %113, %103
  %107 = load i32, i32* %4, align 4
  %108 = icmp sge i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %106
  %110 = load %struct.objagg*, %struct.objagg** %3, align 8
  %111 = load i32, i32* %4, align 4
  %112 = call i32 @world_obj_put(%struct.world* %2, %struct.objagg* %110, i32 %111)
  br label %113

113:                                              ; preds = %109
  %114 = load i32, i32* %4, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %4, align 4
  br label %106

116:                                              ; preds = %106
  %117 = load i32, i32* @NUM_KEYS, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %116, %31
  br label %119

119:                                              ; preds = %118, %87
  %120 = load i32, i32* %4, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %129, %119
  %123 = load i32, i32* %4, align 4
  %124 = icmp sge i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %122
  %126 = load %struct.objagg*, %struct.objagg** %3, align 8
  %127 = load i32, i32* %4, align 4
  %128 = call i32 @world_obj_put(%struct.world* %2, %struct.objagg* %126, i32 %127)
  br label %129

129:                                              ; preds = %125
  %130 = load i32, i32* %4, align 4
  %131 = add nsw i32 %130, -1
  store i32 %131, i32* %4, align 4
  br label %122

132:                                              ; preds = %122
  br label %133

133:                                              ; preds = %132, %19
  br label %134

134:                                              ; preds = %133, %97
  %135 = load %struct.objagg*, %struct.objagg** %3, align 8
  %136 = call i32 @objagg_destroy(%struct.objagg* %135)
  %137 = load i32, i32* %5, align 4
  store i32 %137, i32* %1, align 4
  br label %138

138:                                              ; preds = %134, %98, %11
  %139 = load i32, i32* %1, align 4
  ret i32 %139
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.objagg* @objagg_create(i32*, i32*, %struct.world*) #2

declare dso_local i64 @IS_ERR(%struct.objagg*) #2

declare dso_local i32 @PTR_ERR(%struct.objagg*) #2

declare dso_local i32 @check_stats_zero(%struct.objagg*) #2

declare dso_local i32 @test_nodelta_obj_get(%struct.world*, %struct.objagg*, i32, i32) #2

declare dso_local i32 @check_stats_nodelta(%struct.objagg*) #2

declare dso_local i32 @test_nodelta_obj_put(%struct.world*, %struct.objagg*, i32, i32) #2

declare dso_local i32 @objagg_destroy(%struct.objagg*) #2

declare dso_local i32 @world_obj_put(%struct.world*, %struct.objagg*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
