; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_igmp.c_ip_sf_list_clear_all.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_igmp.c_ip_sf_list_clear_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_sf_list = type { %struct.ip_sf_list* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_sf_list*)* @ip_sf_list_clear_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_sf_list_clear_all(%struct.ip_sf_list* %0) #0 {
  %2 = alloca %struct.ip_sf_list*, align 8
  %3 = alloca %struct.ip_sf_list*, align 8
  store %struct.ip_sf_list* %0, %struct.ip_sf_list** %2, align 8
  br label %4

4:                                                ; preds = %7, %1
  %5 = load %struct.ip_sf_list*, %struct.ip_sf_list** %2, align 8
  %6 = icmp ne %struct.ip_sf_list* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = load %struct.ip_sf_list*, %struct.ip_sf_list** %2, align 8
  %9 = getelementptr inbounds %struct.ip_sf_list, %struct.ip_sf_list* %8, i32 0, i32 0
  %10 = load %struct.ip_sf_list*, %struct.ip_sf_list** %9, align 8
  store %struct.ip_sf_list* %10, %struct.ip_sf_list** %3, align 8
  %11 = load %struct.ip_sf_list*, %struct.ip_sf_list** %2, align 8
  %12 = call i32 @kfree(%struct.ip_sf_list* %11)
  %13 = load %struct.ip_sf_list*, %struct.ip_sf_list** %3, align 8
  store %struct.ip_sf_list* %13, %struct.ip_sf_list** %2, align 8
  br label %4

14:                                               ; preds = %4
  ret void
}

declare dso_local i32 @kfree(%struct.ip_sf_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
