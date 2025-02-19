; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_dsa2.c_dsa_switch_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_dsa2.c_dsa_switch_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.dsa_switch_tree* }
%struct.dsa_switch_tree = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*)* @dsa_switch_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_switch_add(%struct.dsa_switch* %0) #0 {
  %2 = alloca %struct.dsa_switch*, align 8
  %3 = alloca %struct.dsa_switch_tree*, align 8
  store %struct.dsa_switch* %0, %struct.dsa_switch** %2, align 8
  %4 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %5 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %4, i32 0, i32 0
  %6 = load %struct.dsa_switch_tree*, %struct.dsa_switch_tree** %5, align 8
  store %struct.dsa_switch_tree* %6, %struct.dsa_switch_tree** %3, align 8
  %7 = load %struct.dsa_switch_tree*, %struct.dsa_switch_tree** %3, align 8
  %8 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %9 = call i32 @dsa_tree_add_switch(%struct.dsa_switch_tree* %7, %struct.dsa_switch* %8)
  ret i32 %9
}

declare dso_local i32 @dsa_tree_add_switch(%struct.dsa_switch_tree*, %struct.dsa_switch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
