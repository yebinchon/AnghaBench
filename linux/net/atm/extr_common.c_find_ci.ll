; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_common.c_find_ci.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_common.c_find_ci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@find_ci.p = internal global i16 0, align 2
@find_ci.c = internal global i32 0, align 4
@ATM_VPI_ANY = common dso_local global i16 0, align 2
@ATM_VCI_ANY = common dso_local global i32 0, align 4
@ATM_NOT_RSV_VCI = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_vcc*, i16*, i32*)* @find_ci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_ci(%struct.atm_vcc* %0, i16* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.atm_vcc*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.atm_vcc* %0, %struct.atm_vcc** %5, align 8
  store i16* %1, i16** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i16*, i16** %6, align 8
  %12 = load i16, i16* %11, align 2
  %13 = sext i16 %12 to i32
  %14 = load i16, i16* @ATM_VPI_ANY, align 2
  %15 = sext i16 %14 to i32
  %16 = icmp ne i32 %13, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %3
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ATM_VCI_ANY, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %24 = load i16*, i16** %6, align 8
  %25 = load i16, i16* %24, align 2
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @check_ci(%struct.atm_vcc* %23, i16 signext %25, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %4, align 4
  br label %159

30:                                               ; preds = %17, %3
  %31 = load i16*, i16** %6, align 8
  %32 = load i16, i16* %31, align 2
  %33 = sext i16 %32 to i32
  %34 = load i16, i16* @ATM_VPI_ANY, align 2
  %35 = sext i16 %34 to i32
  %36 = icmp ne i32 %33, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i16*, i16** %6, align 8
  %39 = load i16, i16* %38, align 2
  store i16 %39, i16* @find_ci.p, align 2
  br label %53

40:                                               ; preds = %30
  %41 = load i16, i16* @find_ci.p, align 2
  %42 = sext i16 %41 to i32
  %43 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %44 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 1, %48
  %50 = icmp sge i32 %42, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  store i16 0, i16* @find_ci.p, align 2
  br label %52

52:                                               ; preds = %51, %40
  br label %53

53:                                               ; preds = %52, %37
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @ATM_VCI_ANY, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* @find_ci.c, align 4
  br label %78

61:                                               ; preds = %53
  %62 = load i32, i32* @find_ci.c, align 4
  %63 = load i32, i32* @ATM_NOT_RSV_VCI, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %75, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* @find_ci.c, align 4
  %67 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %68 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 1, %72
  %74 = icmp sge i32 %66, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %65, %61
  %76 = load i32, i32* @ATM_NOT_RSV_VCI, align 4
  store i32 %76, i32* @find_ci.c, align 4
  br label %77

77:                                               ; preds = %75, %65
  br label %78

78:                                               ; preds = %77, %58
  %79 = load i16, i16* @find_ci.p, align 2
  store i16 %79, i16* %8, align 2
  %80 = load i32, i32* @find_ci.c, align 4
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %154, %78
  %82 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %83 = load i16, i16* @find_ci.p, align 2
  %84 = load i32, i32* @find_ci.c, align 4
  %85 = call i32 @check_ci(%struct.atm_vcc* %82, i16 signext %83, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %81
  %88 = load i16, i16* @find_ci.p, align 2
  %89 = load i16*, i16** %6, align 8
  store i16 %88, i16* %89, align 2
  %90 = load i32, i32* @find_ci.c, align 4
  %91 = load i32*, i32** %7, align 8
  store i32 %90, i32* %91, align 4
  store i32 0, i32* %4, align 4
  br label %159

92:                                               ; preds = %81
  %93 = load i32*, i32** %7, align 8
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @ATM_VCI_ANY, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %112

97:                                               ; preds = %92
  %98 = load i32, i32* @find_ci.c, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* @find_ci.c, align 4
  %100 = load i32, i32* @find_ci.c, align 4
  %101 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %102 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %101, i32 0, i32 0
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = shl i32 1, %106
  %108 = icmp sge i32 %100, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %97
  %110 = load i32, i32* @ATM_NOT_RSV_VCI, align 4
  store i32 %110, i32* @find_ci.c, align 4
  br label %111

111:                                              ; preds = %109, %97
  br label %112

112:                                              ; preds = %111, %92
  %113 = load i32, i32* @find_ci.c, align 4
  %114 = load i32, i32* @ATM_NOT_RSV_VCI, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %121, label %116

116:                                              ; preds = %112
  %117 = load i32*, i32** %7, align 8
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @ATM_VCI_ANY, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %143

121:                                              ; preds = %116, %112
  %122 = load i16*, i16** %6, align 8
  %123 = load i16, i16* %122, align 2
  %124 = sext i16 %123 to i32
  %125 = load i16, i16* @ATM_VPI_ANY, align 2
  %126 = sext i16 %125 to i32
  %127 = icmp eq i32 %124, %126
  br i1 %127, label %128, label %143

128:                                              ; preds = %121
  %129 = load i16, i16* @find_ci.p, align 2
  %130 = add i16 %129, 1
  store i16 %130, i16* @find_ci.p, align 2
  %131 = load i16, i16* @find_ci.p, align 2
  %132 = sext i16 %131 to i32
  %133 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %134 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %133, i32 0, i32 0
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = shl i32 1, %138
  %140 = icmp sge i32 %132, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %128
  store i16 0, i16* @find_ci.p, align 2
  br label %142

142:                                              ; preds = %141, %128
  br label %143

143:                                              ; preds = %142, %121, %116
  br label %144

144:                                              ; preds = %143
  %145 = load i16, i16* %8, align 2
  %146 = sext i16 %145 to i32
  %147 = load i16, i16* @find_ci.p, align 2
  %148 = sext i16 %147 to i32
  %149 = icmp ne i32 %146, %148
  br i1 %149, label %154, label %150

150:                                              ; preds = %144
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* @find_ci.c, align 4
  %153 = icmp ne i32 %151, %152
  br label %154

154:                                              ; preds = %150, %144
  %155 = phi i1 [ true, %144 ], [ %153, %150 ]
  br i1 %155, label %81, label %156

156:                                              ; preds = %154
  %157 = load i32, i32* @EADDRINUSE, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %4, align 4
  br label %159

159:                                              ; preds = %156, %87, %22
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local i32 @check_ci(%struct.atm_vcc*, i16 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
