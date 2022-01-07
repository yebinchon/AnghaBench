; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_regdom_intersect.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_regdom_intersect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_regdomain = type { i32, i8*, i32, %struct.ieee80211_reg_rule* }
%struct.ieee80211_reg_rule = type { i32 }

@reg_rules = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ieee80211_regdomain* (%struct.ieee80211_regdomain*, %struct.ieee80211_regdomain*)* @regdom_intersect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ieee80211_regdomain* @regdom_intersect(%struct.ieee80211_regdomain* %0, %struct.ieee80211_regdomain* %1) #0 {
  %3 = alloca %struct.ieee80211_regdomain*, align 8
  %4 = alloca %struct.ieee80211_regdomain*, align 8
  %5 = alloca %struct.ieee80211_regdomain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_reg_rule*, align 8
  %11 = alloca %struct.ieee80211_reg_rule*, align 8
  %12 = alloca %struct.ieee80211_reg_rule, align 4
  %13 = alloca %struct.ieee80211_regdomain*, align 8
  store %struct.ieee80211_regdomain* %0, %struct.ieee80211_regdomain** %4, align 8
  store %struct.ieee80211_regdomain* %1, %struct.ieee80211_regdomain** %5, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %15 = icmp ne %struct.ieee80211_regdomain* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %5, align 8
  %18 = icmp ne %struct.ieee80211_regdomain* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %2
  store %struct.ieee80211_regdomain* null, %struct.ieee80211_regdomain** %3, align 8
  br label %146

20:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %61, %20
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %27, label %64

27:                                               ; preds = %21
  %28 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %29 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %28, i32 0, i32 3
  %30 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %30, i64 %32
  store %struct.ieee80211_reg_rule* %33, %struct.ieee80211_reg_rule** %10, align 8
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %57, %27
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %5, align 8
  %37 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ult i32 %35, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %34
  %41 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %5, align 8
  %42 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %41, i32 0, i32 3
  %43 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %43, i64 %45
  store %struct.ieee80211_reg_rule* %46, %struct.ieee80211_reg_rule** %11, align 8
  %47 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %48 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %5, align 8
  %49 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %10, align 8
  %50 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %11, align 8
  %51 = call i32 @reg_rules_intersect(%struct.ieee80211_regdomain* %47, %struct.ieee80211_regdomain* %48, %struct.ieee80211_reg_rule* %49, %struct.ieee80211_reg_rule* %50, %struct.ieee80211_reg_rule* %12)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %40
  %54 = load i32, i32* %9, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %53, %40
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %8, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %34

60:                                               ; preds = %34
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %7, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %21

64:                                               ; preds = %21
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  store %struct.ieee80211_regdomain* null, %struct.ieee80211_regdomain** %3, align 8
  br label %146

68:                                               ; preds = %64
  %69 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %13, align 8
  %70 = load i32, i32* @reg_rules, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @struct_size(%struct.ieee80211_regdomain* %69, i32 %70, i32 %71)
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = call %struct.ieee80211_regdomain* @kzalloc(i32 %72, i32 %73)
  store %struct.ieee80211_regdomain* %74, %struct.ieee80211_regdomain** %13, align 8
  %75 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %13, align 8
  %76 = icmp ne %struct.ieee80211_regdomain* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %68
  store %struct.ieee80211_regdomain* null, %struct.ieee80211_regdomain** %3, align 8
  br label %146

78:                                               ; preds = %68
  store i32 0, i32* %7, align 4
  br label %79

79:                                               ; preds = %124, %78
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %82 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ult i32 %80, %83
  br i1 %84, label %85, label %127

85:                                               ; preds = %79
  %86 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %87 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %86, i32 0, i32 3
  %88 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %88, i64 %90
  store %struct.ieee80211_reg_rule* %91, %struct.ieee80211_reg_rule** %10, align 8
  store i32 0, i32* %8, align 4
  br label %92

92:                                               ; preds = %120, %85
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %5, align 8
  %95 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ult i32 %93, %96
  br i1 %97, label %98, label %123

98:                                               ; preds = %92
  %99 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %5, align 8
  %100 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %99, i32 0, i32 3
  %101 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %101, i64 %103
  store %struct.ieee80211_reg_rule* %104, %struct.ieee80211_reg_rule** %11, align 8
  %105 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %106 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %5, align 8
  %107 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %10, align 8
  %108 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %11, align 8
  %109 = call i32 @reg_rules_intersect(%struct.ieee80211_regdomain* %105, %struct.ieee80211_regdomain* %106, %struct.ieee80211_reg_rule* %107, %struct.ieee80211_reg_rule* %108, %struct.ieee80211_reg_rule* %12)
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %98
  br label %120

113:                                              ; preds = %98
  %114 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %13, align 8
  %115 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %114, i32 0, i32 3
  %116 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %115, align 8
  %117 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %13, align 8
  %118 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %117, i32 0, i32 0
  %119 = call i32 @add_rule(%struct.ieee80211_reg_rule* %12, %struct.ieee80211_reg_rule* %116, i32* %118)
  br label %120

120:                                              ; preds = %113, %112
  %121 = load i32, i32* %8, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %8, align 4
  br label %92

123:                                              ; preds = %92
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %7, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %7, align 4
  br label %79

127:                                              ; preds = %79
  %128 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %13, align 8
  %129 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %128, i32 0, i32 1
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 0
  store i8 57, i8* %131, align 1
  %132 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %13, align 8
  %133 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 1
  store i8 56, i8* %135, align 1
  %136 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %137 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %5, align 8
  %140 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @reg_intersect_dfs_region(i32 %138, i32 %141)
  %143 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %13, align 8
  %144 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 8
  %145 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %13, align 8
  store %struct.ieee80211_regdomain* %145, %struct.ieee80211_regdomain** %3, align 8
  br label %146

146:                                              ; preds = %127, %77, %67, %19
  %147 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %3, align 8
  ret %struct.ieee80211_regdomain* %147
}

declare dso_local i32 @reg_rules_intersect(%struct.ieee80211_regdomain*, %struct.ieee80211_regdomain*, %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule*) #1

declare dso_local %struct.ieee80211_regdomain* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.ieee80211_regdomain*, i32, i32) #1

declare dso_local i32 @add_rule(%struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule*, i32*) #1

declare dso_local i32 @reg_intersect_dfs_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
