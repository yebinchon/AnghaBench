; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_tag_8021q.c_dsa_port_setup_8021q_tagging.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_tag_8021q.c_dsa_port_setup_8021q_tagging.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32, i32 }

@BRIDGE_VLAN_INFO_UNTAGGED = common dso_local global i32 0, align 4
@BRIDGE_VLAN_INFO_PVID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed to apply RX VID %d to port %d: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed to apply TX VID %d on port %d: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsa_port_setup_8021q_tagging(%struct.dsa_switch* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dsa_switch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @dsa_upstream_port(%struct.dsa_switch* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @dsa_8021q_rx_vid(%struct.dsa_switch* %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @dsa_8021q_tx_vid(%struct.dsa_switch* %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @dsa_is_user_port(%struct.dsa_switch* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %134

28:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %70, %28
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %32 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %73

35:                                               ; preds = %29
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %70

40:                                               ; preds = %35
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* @BRIDGE_VLAN_INFO_UNTAGGED, align 4
  %46 = load i32, i32* @BRIDGE_VLAN_INFO_PVID, align 4
  %47 = or i32 %45, %46
  store i32 %47, i32* %13, align 4
  br label %50

48:                                               ; preds = %40
  %49 = load i32, i32* @BRIDGE_VLAN_INFO_UNTAGGED, align 4
  store i32 %49, i32* %13, align 4
  br label %50

50:                                               ; preds = %48, %44
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @dsa_8021q_vid_apply(%struct.dsa_switch* %52, i32 %53, i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %51
  %61 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %62 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @dev_err(i32 %63, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %65, i32 %66)
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %4, align 4
  br label %134

69:                                               ; preds = %51
  br label %70

70:                                               ; preds = %69, %39
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %11, align 4
  br label %29

73:                                               ; preds = %29
  %74 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @dsa_8021q_vid_apply(%struct.dsa_switch* %74, i32 %75, i32 %76, i32 0, i32 %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %73
  %82 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %83 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @dev_err(i32 %84, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %85, i32 %86, i32 %87)
  %89 = load i32, i32* %12, align 4
  store i32 %89, i32* %4, align 4
  br label %134

90:                                               ; preds = %73
  %91 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @BRIDGE_VLAN_INFO_UNTAGGED, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @dsa_8021q_vid_apply(%struct.dsa_switch* %91, i32 %92, i32 %93, i32 %94, i32 %95)
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %90
  %100 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %101 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @dev_err(i32 %102, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %103, i32 %104, i32 %105)
  %107 = load i32, i32* %12, align 4
  store i32 %107, i32* %4, align 4
  br label %134

108:                                              ; preds = %90
  %109 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @dsa_8021q_vid_apply(%struct.dsa_switch* %109, i32 %110, i32 %111, i32 0, i32 %112)
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %12, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %108
  %117 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %118 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %12, align 4
  %123 = call i32 @dev_err(i32 %119, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %120, i32 %121, i32 %122)
  %124 = load i32, i32* %12, align 4
  store i32 %124, i32* %4, align 4
  br label %134

125:                                              ; preds = %108
  %126 = load i32, i32* %7, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %125
  %129 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @dsa_8021q_restore_pvid(%struct.dsa_switch* %129, i32 %130)
  store i32 %131, i32* %12, align 4
  br label %132

132:                                              ; preds = %128, %125
  %133 = load i32, i32* %12, align 4
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %132, %116, %99, %81, %60, %27
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i32 @dsa_upstream_port(%struct.dsa_switch*, i32) #1

declare dso_local i32 @dsa_8021q_rx_vid(%struct.dsa_switch*, i32) #1

declare dso_local i32 @dsa_8021q_tx_vid(%struct.dsa_switch*, i32) #1

declare dso_local i32 @dsa_is_user_port(%struct.dsa_switch*, i32) #1

declare dso_local i32 @dsa_8021q_vid_apply(%struct.dsa_switch*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @dsa_8021q_restore_pvid(%struct.dsa_switch*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
