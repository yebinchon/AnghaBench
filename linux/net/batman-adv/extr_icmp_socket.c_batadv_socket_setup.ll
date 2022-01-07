; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_icmp_socket.c_batadv_socket_setup.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_icmp_socket.c_batadv_socket_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }

@BATADV_ICMP_SOCKET = common dso_local global i32 0, align 4
@batadv_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @batadv_socket_setup(%struct.batadv_priv* %0) #0 {
  %2 = alloca %struct.batadv_priv*, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %2, align 8
  %3 = load i32, i32* @BATADV_ICMP_SOCKET, align 4
  %4 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %5 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %8 = call i32 @debugfs_create_file(i32 %3, i32 384, i32 %6, %struct.batadv_priv* %7, i32* @batadv_fops)
  ret void
}

declare dso_local i32 @debugfs_create_file(i32, i32, i32, %struct.batadv_priv*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
