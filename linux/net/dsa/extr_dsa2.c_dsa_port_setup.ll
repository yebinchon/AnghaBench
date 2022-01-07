; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_dsa2.c_dsa_port_setup.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_dsa2.c_dsa_port_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_port = type { i32, i32, i32, i32, i32, %struct.devlink_port, %struct.dsa_switch* }
%struct.devlink_port = type { i32 }
%struct.dsa_switch = type { %struct.devlink*, %struct.dsa_switch_tree* }
%struct.devlink = type { i32 }
%struct.dsa_switch_tree = type { i32 }

@DEVLINK_PORT_FLAVOUR_CPU = common dso_local global i32 0, align 4
@DEVLINK_PORT_FLAVOUR_DSA = common dso_local global i32 0, align 4
@DEVLINK_PORT_FLAVOUR_PHYSICAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_port*)* @dsa_port_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_port_setup(%struct.dsa_port* %0) #0 {
  %2 = alloca %struct.dsa_port*, align 8
  %3 = alloca %struct.dsa_switch*, align 8
  %4 = alloca %struct.dsa_switch_tree*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.devlink_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.devlink*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dsa_port* %0, %struct.dsa_port** %2, align 8
  %13 = load %struct.dsa_port*, %struct.dsa_port** %2, align 8
  %14 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %13, i32 0, i32 6
  %15 = load %struct.dsa_switch*, %struct.dsa_switch** %14, align 8
  store %struct.dsa_switch* %15, %struct.dsa_switch** %3, align 8
  %16 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %17 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %16, i32 0, i32 1
  %18 = load %struct.dsa_switch_tree*, %struct.dsa_switch_tree** %17, align 8
  store %struct.dsa_switch_tree* %18, %struct.dsa_switch_tree** %4, align 8
  %19 = load %struct.dsa_switch_tree*, %struct.dsa_switch_tree** %4, align 8
  %20 = getelementptr inbounds %struct.dsa_switch_tree, %struct.dsa_switch_tree* %19, i32 0, i32 0
  %21 = bitcast i32* %20 to i8*
  store i8* %21, i8** %5, align 8
  store i8 4, i8* %6, align 1
  %22 = load %struct.dsa_port*, %struct.dsa_port** %2, align 8
  %23 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %22, i32 0, i32 5
  store %struct.devlink_port* %23, %struct.devlink_port** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %24 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %25 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %24, i32 0, i32 0
  %26 = load %struct.devlink*, %struct.devlink** %25, align 8
  store %struct.devlink* %26, %struct.devlink** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %27 = load %struct.dsa_port*, %struct.dsa_port** %2, align 8
  %28 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %134 [
    i32 129, label %30
    i32 131, label %33
    i32 130, label %65
    i32 128, label %97
  ]

30:                                               ; preds = %1
  %31 = load %struct.dsa_port*, %struct.dsa_port** %2, align 8
  %32 = call i32 @dsa_port_disable(%struct.dsa_port* %31)
  br label %134

33:                                               ; preds = %1
  %34 = load %struct.devlink_port*, %struct.devlink_port** %7, align 8
  %35 = call i32 @memset(%struct.devlink_port* %34, i32 0, i32 4)
  %36 = load %struct.devlink_port*, %struct.devlink_port** %7, align 8
  %37 = load i32, i32* @DEVLINK_PORT_FLAVOUR_CPU, align 4
  %38 = load %struct.dsa_port*, %struct.dsa_port** %2, align 8
  %39 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @devlink_port_attrs_set(%struct.devlink_port* %36, i32 %37, i32 %40, i32 0, i32 0, i8* %41, i8 zeroext 4)
  %43 = load %struct.devlink*, %struct.devlink** %10, align 8
  %44 = load %struct.devlink_port*, %struct.devlink_port** %7, align 8
  %45 = load %struct.dsa_port*, %struct.dsa_port** %2, align 8
  %46 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @devlink_port_register(%struct.devlink* %43, %struct.devlink_port* %44, i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %33
  br label %134

52:                                               ; preds = %33
  store i32 1, i32* %9, align 4
  %53 = load %struct.dsa_port*, %struct.dsa_port** %2, align 8
  %54 = call i32 @dsa_port_link_register_of(%struct.dsa_port* %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %134

58:                                               ; preds = %52
  store i32 1, i32* %8, align 4
  %59 = load %struct.dsa_port*, %struct.dsa_port** %2, align 8
  %60 = call i32 @dsa_port_enable(%struct.dsa_port* %59, i32* null)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %134

64:                                               ; preds = %58
  store i32 1, i32* %11, align 4
  br label %134

65:                                               ; preds = %1
  %66 = load %struct.devlink_port*, %struct.devlink_port** %7, align 8
  %67 = call i32 @memset(%struct.devlink_port* %66, i32 0, i32 4)
  %68 = load %struct.devlink_port*, %struct.devlink_port** %7, align 8
  %69 = load i32, i32* @DEVLINK_PORT_FLAVOUR_DSA, align 4
  %70 = load %struct.dsa_port*, %struct.dsa_port** %2, align 8
  %71 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = call i32 @devlink_port_attrs_set(%struct.devlink_port* %68, i32 %69, i32 %72, i32 0, i32 0, i8* %73, i8 zeroext 4)
  %75 = load %struct.devlink*, %struct.devlink** %10, align 8
  %76 = load %struct.devlink_port*, %struct.devlink_port** %7, align 8
  %77 = load %struct.dsa_port*, %struct.dsa_port** %2, align 8
  %78 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @devlink_port_register(%struct.devlink* %75, %struct.devlink_port* %76, i32 %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %65
  br label %134

84:                                               ; preds = %65
  store i32 1, i32* %9, align 4
  %85 = load %struct.dsa_port*, %struct.dsa_port** %2, align 8
  %86 = call i32 @dsa_port_link_register_of(%struct.dsa_port* %85)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %134

90:                                               ; preds = %84
  store i32 1, i32* %8, align 4
  %91 = load %struct.dsa_port*, %struct.dsa_port** %2, align 8
  %92 = call i32 @dsa_port_enable(%struct.dsa_port* %91, i32* null)
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %12, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %134

96:                                               ; preds = %90
  store i32 1, i32* %11, align 4
  br label %134

97:                                               ; preds = %1
  %98 = load %struct.devlink_port*, %struct.devlink_port** %7, align 8
  %99 = call i32 @memset(%struct.devlink_port* %98, i32 0, i32 4)
  %100 = load %struct.devlink_port*, %struct.devlink_port** %7, align 8
  %101 = load i32, i32* @DEVLINK_PORT_FLAVOUR_PHYSICAL, align 4
  %102 = load %struct.dsa_port*, %struct.dsa_port** %2, align 8
  %103 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = load i8*, i8** %5, align 8
  %106 = call i32 @devlink_port_attrs_set(%struct.devlink_port* %100, i32 %101, i32 %104, i32 0, i32 0, i8* %105, i8 zeroext 4)
  %107 = load %struct.devlink*, %struct.devlink** %10, align 8
  %108 = load %struct.devlink_port*, %struct.devlink_port** %7, align 8
  %109 = load %struct.dsa_port*, %struct.dsa_port** %2, align 8
  %110 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @devlink_port_register(%struct.devlink* %107, %struct.devlink_port* %108, i32 %111)
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* %12, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %97
  br label %134

116:                                              ; preds = %97
  store i32 1, i32* %9, align 4
  %117 = load %struct.dsa_port*, %struct.dsa_port** %2, align 8
  %118 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @of_get_mac_address(i32 %119)
  %121 = load %struct.dsa_port*, %struct.dsa_port** %2, align 8
  %122 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 4
  %123 = load %struct.dsa_port*, %struct.dsa_port** %2, align 8
  %124 = call i32 @dsa_slave_create(%struct.dsa_port* %123)
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %12, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %116
  br label %134

128:                                              ; preds = %116
  %129 = load %struct.devlink_port*, %struct.devlink_port** %7, align 8
  %130 = load %struct.dsa_port*, %struct.dsa_port** %2, align 8
  %131 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @devlink_port_type_eth_set(%struct.devlink_port* %129, i32 %132)
  br label %134

134:                                              ; preds = %1, %128, %127, %115, %96, %95, %89, %83, %64, %63, %57, %51, %30
  %135 = load i32, i32* %12, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %134
  %138 = load i32, i32* %11, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load %struct.dsa_port*, %struct.dsa_port** %2, align 8
  %142 = call i32 @dsa_port_disable(%struct.dsa_port* %141)
  br label %143

143:                                              ; preds = %140, %137, %134
  %144 = load i32, i32* %12, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %143
  %147 = load i32, i32* %8, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load %struct.dsa_port*, %struct.dsa_port** %2, align 8
  %151 = call i32 @dsa_port_link_unregister_of(%struct.dsa_port* %150)
  br label %152

152:                                              ; preds = %149, %146, %143
  %153 = load i32, i32* %12, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %152
  %156 = load i32, i32* %9, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load %struct.devlink_port*, %struct.devlink_port** %7, align 8
  %160 = call i32 @devlink_port_unregister(%struct.devlink_port* %159)
  br label %161

161:                                              ; preds = %158, %155, %152
  %162 = load i32, i32* %12, align 4
  ret i32 %162
}

declare dso_local i32 @dsa_port_disable(%struct.dsa_port*) #1

declare dso_local i32 @memset(%struct.devlink_port*, i32, i32) #1

declare dso_local i32 @devlink_port_attrs_set(%struct.devlink_port*, i32, i32, i32, i32, i8*, i8 zeroext) #1

declare dso_local i32 @devlink_port_register(%struct.devlink*, %struct.devlink_port*, i32) #1

declare dso_local i32 @dsa_port_link_register_of(%struct.dsa_port*) #1

declare dso_local i32 @dsa_port_enable(%struct.dsa_port*, i32*) #1

declare dso_local i32 @of_get_mac_address(i32) #1

declare dso_local i32 @dsa_slave_create(%struct.dsa_port*) #1

declare dso_local i32 @devlink_port_type_eth_set(%struct.devlink_port*, i32) #1

declare dso_local i32 @dsa_port_link_unregister_of(%struct.dsa_port*) #1

declare dso_local i32 @devlink_port_unregister(%struct.devlink_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
