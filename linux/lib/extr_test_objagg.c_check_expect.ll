; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_objagg.c_check_expect.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_objagg.c_check_expect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.world = type { i32, i32 }
%struct.action_item = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [64 x i8] c"Key %u: Delta count changed while expected to remain the same.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ACTION_PUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Key %u: Delta count was not incremented.\0A\00", align 1
@ACTION_GET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Key %u: Delta count was not decremented.\0A\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"Key %u: Root count changed while expected to remain the same.\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Key %u: Root count was not incremented.\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Key %u: Root count was not decremented.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.world*, %struct.action_item*, i32, i32)* @check_expect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_expect(%struct.world* %0, %struct.action_item* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.world*, align 8
  %7 = alloca %struct.action_item*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.world* %0, %struct.world** %6, align 8
  store %struct.action_item* %1, %struct.action_item** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.action_item*, %struct.action_item** %7, align 8
  %12 = getelementptr inbounds %struct.action_item, %struct.action_item* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.action_item*, %struct.action_item** %7, align 8
  %15 = getelementptr inbounds %struct.action_item, %struct.action_item* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %79 [
    i32 131, label %17
    i32 132, label %29
    i32 133, label %54
  ]

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.world*, %struct.world** %6, align 8
  %20 = getelementptr inbounds %struct.world, %struct.world* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %18, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %146

28:                                               ; preds = %17
  br label %79

29:                                               ; preds = %4
  %30 = load %struct.action_item*, %struct.action_item** %7, align 8
  %31 = getelementptr inbounds %struct.action_item, %struct.action_item* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ACTION_PUT, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @WARN_ON(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %146

41:                                               ; preds = %29
  %42 = load i32, i32* %8, align 4
  %43 = add i32 %42, 1
  %44 = load %struct.world*, %struct.world** %6, align 8
  %45 = getelementptr inbounds %struct.world, %struct.world* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %43, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %146

53:                                               ; preds = %41
  br label %79

54:                                               ; preds = %4
  %55 = load %struct.action_item*, %struct.action_item** %7, align 8
  %56 = getelementptr inbounds %struct.action_item, %struct.action_item* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @ACTION_GET, align 4
  %59 = icmp eq i32 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @WARN_ON(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %54
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %146

66:                                               ; preds = %54
  %67 = load i32, i32* %8, align 4
  %68 = sub i32 %67, 1
  %69 = load %struct.world*, %struct.world** %6, align 8
  %70 = getelementptr inbounds %struct.world, %struct.world* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %68, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %66
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %146

78:                                               ; preds = %66
  br label %79

79:                                               ; preds = %4, %78, %53, %28
  %80 = load %struct.action_item*, %struct.action_item** %7, align 8
  %81 = getelementptr inbounds %struct.action_item, %struct.action_item* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  switch i32 %82, label %145 [
    i32 128, label %83
    i32 129, label %95
    i32 130, label %120
  ]

83:                                               ; preds = %79
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.world*, %struct.world** %6, align 8
  %86 = getelementptr inbounds %struct.world, %struct.world* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %84, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %83
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @pr_err(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %5, align 4
  br label %146

94:                                               ; preds = %83
  br label %145

95:                                               ; preds = %79
  %96 = load %struct.action_item*, %struct.action_item** %7, align 8
  %97 = getelementptr inbounds %struct.action_item, %struct.action_item* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @ACTION_PUT, align 4
  %100 = icmp eq i32 %98, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @WARN_ON(i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %95
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %5, align 4
  br label %146

107:                                              ; preds = %95
  %108 = load i32, i32* %9, align 4
  %109 = add i32 %108, 1
  %110 = load %struct.world*, %struct.world** %6, align 8
  %111 = getelementptr inbounds %struct.world, %struct.world* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %109, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %107
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %5, align 4
  br label %146

119:                                              ; preds = %107
  br label %145

120:                                              ; preds = %79
  %121 = load %struct.action_item*, %struct.action_item** %7, align 8
  %122 = getelementptr inbounds %struct.action_item, %struct.action_item* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @ACTION_GET, align 4
  %125 = icmp eq i32 %123, %124
  %126 = zext i1 %125 to i32
  %127 = call i32 @WARN_ON(i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %120
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %5, align 4
  br label %146

132:                                              ; preds = %120
  %133 = load i32, i32* %9, align 4
  %134 = sub i32 %133, 1
  %135 = load %struct.world*, %struct.world** %6, align 8
  %136 = getelementptr inbounds %struct.world, %struct.world* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %134, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %132
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %140)
  %142 = load i32, i32* @EINVAL, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %5, align 4
  br label %146

144:                                              ; preds = %132
  br label %145

145:                                              ; preds = %144, %79, %119, %94
  store i32 0, i32* %5, align 4
  br label %146

146:                                              ; preds = %145, %139, %129, %114, %104, %89, %73, %63, %48, %38, %23
  %147 = load i32, i32* %5, align 4
  ret i32 %147
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
