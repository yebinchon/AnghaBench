; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_dsa2.c_dsa_tree_setup_switches.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_dsa2.c_dsa_tree_setup_switches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch_tree = type { %struct.dsa_switch** }
%struct.dsa_switch = type { i32, %struct.dsa_port* }
%struct.dsa_port = type { i32 }

@DSA_MAX_SWITCHES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch_tree*)* @dsa_tree_setup_switches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_tree_setup_switches(%struct.dsa_switch_tree* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dsa_switch_tree*, align 8
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca %struct.dsa_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dsa_switch_tree* %0, %struct.dsa_switch_tree** %3, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %55, %1
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @DSA_MAX_SWITCHES, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %58

14:                                               ; preds = %10
  %15 = load %struct.dsa_switch_tree*, %struct.dsa_switch_tree** %3, align 8
  %16 = getelementptr inbounds %struct.dsa_switch_tree, %struct.dsa_switch_tree* %15, i32 0, i32 0
  %17 = load %struct.dsa_switch**, %struct.dsa_switch*** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.dsa_switch*, %struct.dsa_switch** %17, i64 %19
  %21 = load %struct.dsa_switch*, %struct.dsa_switch** %20, align 8
  store %struct.dsa_switch* %21, %struct.dsa_switch** %4, align 8
  %22 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %23 = icmp ne %struct.dsa_switch* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  br label %55

25:                                               ; preds = %14
  %26 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %27 = call i32 @dsa_switch_setup(%struct.dsa_switch* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %78

31:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %51, %31
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %35 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %32
  %39 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %40 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %39, i32 0, i32 1
  %41 = load %struct.dsa_port*, %struct.dsa_port** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %41, i64 %43
  store %struct.dsa_port* %44, %struct.dsa_port** %5, align 8
  %45 = load %struct.dsa_port*, %struct.dsa_port** %5, align 8
  %46 = call i32 @dsa_port_setup(%struct.dsa_port* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  br label %59

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %32

54:                                               ; preds = %32
  br label %55

55:                                               ; preds = %54, %24
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %10

58:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %121

59:                                               ; preds = %49
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %72, %59
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %60
  %65 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %66 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %65, i32 0, i32 1
  %67 = load %struct.dsa_port*, %struct.dsa_port** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %67, i64 %69
  %71 = call i32 @dsa_port_teardown(%struct.dsa_port* %70)
  br label %72

72:                                               ; preds = %64
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %60

75:                                               ; preds = %60
  %76 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %77 = call i32 @dsa_switch_teardown(%struct.dsa_switch* %76)
  br label %78

78:                                               ; preds = %75, %30
  store i32 0, i32* %8, align 4
  br label %79

79:                                               ; preds = %116, %78
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %119

83:                                               ; preds = %79
  %84 = load %struct.dsa_switch_tree*, %struct.dsa_switch_tree** %3, align 8
  %85 = getelementptr inbounds %struct.dsa_switch_tree, %struct.dsa_switch_tree* %84, i32 0, i32 0
  %86 = load %struct.dsa_switch**, %struct.dsa_switch*** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.dsa_switch*, %struct.dsa_switch** %86, i64 %88
  %90 = load %struct.dsa_switch*, %struct.dsa_switch** %89, align 8
  store %struct.dsa_switch* %90, %struct.dsa_switch** %4, align 8
  %91 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %92 = icmp ne %struct.dsa_switch* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %83
  br label %116

94:                                               ; preds = %83
  store i32 0, i32* %7, align 4
  br label %95

95:                                               ; preds = %110, %94
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %98 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %113

101:                                              ; preds = %95
  %102 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %103 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %102, i32 0, i32 1
  %104 = load %struct.dsa_port*, %struct.dsa_port** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %104, i64 %106
  store %struct.dsa_port* %107, %struct.dsa_port** %5, align 8
  %108 = load %struct.dsa_port*, %struct.dsa_port** %5, align 8
  %109 = call i32 @dsa_port_teardown(%struct.dsa_port* %108)
  br label %110

110:                                              ; preds = %101
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %7, align 4
  br label %95

113:                                              ; preds = %95
  %114 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %115 = call i32 @dsa_switch_teardown(%struct.dsa_switch* %114)
  br label %116

116:                                              ; preds = %113, %93
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %8, align 4
  br label %79

119:                                              ; preds = %79
  %120 = load i32, i32* %9, align 4
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %119, %58
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i32 @dsa_switch_setup(%struct.dsa_switch*) #1

declare dso_local i32 @dsa_port_setup(%struct.dsa_port*) #1

declare dso_local i32 @dsa_port_teardown(%struct.dsa_port*) #1

declare dso_local i32 @dsa_switch_teardown(%struct.dsa_switch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
