; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_fsm_evt.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_fsm_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_link = type { i32, i32 }

@TIPC_LINK_DOWN_EVT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unknown FSM state %x in %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Illegal FSM event %x in state %x on link %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_link_fsm_evt(%struct.tipc_link* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tipc_link*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tipc_link* %0, %struct.tipc_link** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %9 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %12 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %118 [
    i32 132, label %14
    i32 133, label %25
    i32 135, label %37
    i32 139, label %46
    i32 141, label %55
    i32 142, label %70
    i32 130, label %94
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %23 [
    i32 134, label %16
    i32 131, label %19
    i32 136, label %22
    i32 138, label %22
    i32 140, label %22
    i32 137, label %22
    i32 129, label %22
    i32 128, label %22
  ]

16:                                               ; preds = %14
  %17 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %18 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %17, i32 0, i32 0
  store i32 135, i32* %18, align 4
  br label %24

19:                                               ; preds = %14
  %20 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %21 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %20, i32 0, i32 0
  store i32 133, i32* %21, align 4
  br label %24

22:                                               ; preds = %14, %14, %14, %14, %14, %14
  br label %23

23:                                               ; preds = %14, %22
  br label %137

24:                                               ; preds = %19, %16
  br label %126

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  switch i32 %26, label %35 [
    i32 134, label %27
    i32 138, label %30
    i32 136, label %33
    i32 131, label %33
    i32 140, label %33
    i32 137, label %33
    i32 129, label %34
    i32 128, label %34
  ]

27:                                               ; preds = %25
  %28 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %29 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %28, i32 0, i32 0
  store i32 141, i32* %29, align 4
  br label %36

30:                                               ; preds = %25
  %31 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %32 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %31, i32 0, i32 0
  store i32 139, i32* %32, align 4
  br label %33

33:                                               ; preds = %25, %25, %25, %25, %30
  br label %36

34:                                               ; preds = %25, %25
  br label %35

35:                                               ; preds = %25, %34
  br label %137

36:                                               ; preds = %33, %27
  br label %126

37:                                               ; preds = %2
  %38 = load i32, i32* %5, align 4
  switch i32 %38, label %44 [
    i32 131, label %39
    i32 134, label %42
    i32 140, label %42
    i32 136, label %42
    i32 129, label %43
    i32 128, label %43
    i32 138, label %43
    i32 137, label %43
  ]

39:                                               ; preds = %37
  %40 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %41 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %40, i32 0, i32 0
  store i32 141, i32* %41, align 4
  br label %45

42:                                               ; preds = %37, %37, %37
  br label %45

43:                                               ; preds = %37, %37, %37, %37
  br label %44

44:                                               ; preds = %37, %43
  br label %137

45:                                               ; preds = %42, %39
  br label %126

46:                                               ; preds = %2
  %47 = load i32, i32* %5, align 4
  switch i32 %47, label %53 [
    i32 137, label %48
    i32 134, label %51
    i32 131, label %51
    i32 140, label %51
    i32 136, label %51
    i32 138, label %52
    i32 129, label %52
    i32 128, label %52
  ]

48:                                               ; preds = %46
  %49 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %50 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %49, i32 0, i32 0
  store i32 133, i32* %50, align 4
  br label %54

51:                                               ; preds = %46, %46, %46, %46
  br label %54

52:                                               ; preds = %46, %46, %46
  br label %53

53:                                               ; preds = %46, %52
  br label %137

54:                                               ; preds = %51, %48
  br label %126

55:                                               ; preds = %2
  %56 = load i32, i32* %5, align 4
  switch i32 %56, label %68 [
    i32 140, label %57
    i32 138, label %60
    i32 131, label %63
    i32 136, label %66
    i32 134, label %66
    i32 129, label %66
    i32 137, label %66
    i32 128, label %67
  ]

57:                                               ; preds = %55
  %58 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %59 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %58, i32 0, i32 0
  store i32 142, i32* %59, align 4
  br label %69

60:                                               ; preds = %55
  %61 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %62 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %61, i32 0, i32 0
  store i32 139, i32* %62, align 4
  br label %69

63:                                               ; preds = %55
  %64 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %65 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %64, i32 0, i32 0
  store i32 133, i32* %65, align 4
  br label %69

66:                                               ; preds = %55, %55, %55, %55
  br label %69

67:                                               ; preds = %55
  br label %68

68:                                               ; preds = %55, %67
  br label %137

69:                                               ; preds = %66, %63, %60, %57
  br label %126

70:                                               ; preds = %2
  %71 = load i32, i32* %5, align 4
  switch i32 %71, label %92 [
    i32 134, label %72
    i32 136, label %78
    i32 131, label %84
    i32 140, label %87
    i32 128, label %87
    i32 129, label %88
    i32 138, label %91
    i32 137, label %91
  ]

72:                                               ; preds = %70
  %73 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %74 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %73, i32 0, i32 0
  store i32 135, i32* %74, align 4
  %75 = load i32, i32* @TIPC_LINK_DOWN_EVT, align 4
  %76 = load i32, i32* %6, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %6, align 4
  br label %93

78:                                               ; preds = %70
  %79 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %80 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %79, i32 0, i32 0
  store i32 132, i32* %80, align 4
  %81 = load i32, i32* @TIPC_LINK_DOWN_EVT, align 4
  %82 = load i32, i32* %6, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %6, align 4
  br label %93

84:                                               ; preds = %70
  %85 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %86 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %85, i32 0, i32 0
  store i32 133, i32* %86, align 4
  br label %93

87:                                               ; preds = %70, %70
  br label %93

88:                                               ; preds = %70
  %89 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %90 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %89, i32 0, i32 0
  store i32 130, i32* %90, align 4
  br label %93

91:                                               ; preds = %70, %70
  br label %92

92:                                               ; preds = %70, %91
  br label %137

93:                                               ; preds = %88, %87, %84, %78, %72
  br label %126

94:                                               ; preds = %2
  %95 = load i32, i32* %5, align 4
  switch i32 %95, label %116 [
    i32 134, label %96
    i32 136, label %102
    i32 131, label %108
    i32 140, label %111
    i32 129, label %111
    i32 128, label %112
    i32 138, label %115
    i32 137, label %115
  ]

96:                                               ; preds = %94
  %97 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %98 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %97, i32 0, i32 0
  store i32 135, i32* %98, align 4
  %99 = load i32, i32* @TIPC_LINK_DOWN_EVT, align 4
  %100 = load i32, i32* %6, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %6, align 4
  br label %117

102:                                              ; preds = %94
  %103 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %104 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %103, i32 0, i32 0
  store i32 132, i32* %104, align 4
  %105 = load i32, i32* @TIPC_LINK_DOWN_EVT, align 4
  %106 = load i32, i32* %6, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %6, align 4
  br label %117

108:                                              ; preds = %94
  %109 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %110 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %109, i32 0, i32 0
  store i32 133, i32* %110, align 4
  br label %117

111:                                              ; preds = %94, %94
  br label %117

112:                                              ; preds = %94
  %113 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %114 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %113, i32 0, i32 0
  store i32 142, i32* %114, align 4
  br label %117

115:                                              ; preds = %94, %94
  br label %116

116:                                              ; preds = %94, %115
  br label %137

117:                                              ; preds = %112, %111, %108, %102, %96
  br label %126

118:                                              ; preds = %2
  %119 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %120 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %123 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (i8*, i32, i32, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %121, i32 %124)
  br label %126

126:                                              ; preds = %118, %117, %93, %69, %54, %45, %36, %24
  %127 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %128 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %7, align 4
  %131 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %132 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %5, align 4
  %135 = call i32 @trace_tipc_link_fsm(i32 %129, i32 %130, i32 %133, i32 %134)
  %136 = load i32, i32* %6, align 4
  store i32 %136, i32* %3, align 4
  br label %156

137:                                              ; preds = %116, %92, %68, %53, %44, %35, %23
  %138 = load i32, i32* %5, align 4
  %139 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %140 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %143 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 (i8*, i32, i32, ...) @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %138, i32 %141, i32 %144)
  %146 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %147 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %7, align 4
  %150 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %151 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %5, align 4
  %154 = call i32 @trace_tipc_link_fsm(i32 %148, i32 %149, i32 %152, i32 %153)
  %155 = load i32, i32* %6, align 4
  store i32 %155, i32* %3, align 4
  br label %156

156:                                              ; preds = %137, %126
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i32 @pr_err(i8*, i32, i32, ...) #1

declare dso_local i32 @trace_tipc_link_fsm(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
