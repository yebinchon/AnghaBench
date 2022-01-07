; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_hashtables.c_inet_ehash_nolisten.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_hashtables.c_inet_ehash_nolisten.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TCP_CLOSE = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet_ehash_nolisten(%struct.sock* %0, %struct.sock* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sock* %1, %struct.sock** %4, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = load %struct.sock*, %struct.sock** %4, align 8
  %8 = call i32 @inet_ehash_insert(%struct.sock* %6, %struct.sock* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = call i32 @sock_net(%struct.sock* %12)
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = getelementptr inbounds %struct.sock, %struct.sock* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = call i32 @sock_prot_inuse_add(i32 %13, %struct.TYPE_2__* %16, i32 1)
  br label %33

18:                                               ; preds = %2
  %19 = load %struct.sock*, %struct.sock** %3, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @percpu_counter_inc(i32 %23)
  %25 = load %struct.sock*, %struct.sock** %3, align 8
  %26 = load i32, i32* @TCP_CLOSE, align 4
  %27 = call i32 @inet_sk_set_state(%struct.sock* %25, i32 %26)
  %28 = load %struct.sock*, %struct.sock** %3, align 8
  %29 = load i32, i32* @SOCK_DEAD, align 4
  %30 = call i32 @sock_set_flag(%struct.sock* %28, i32 %29)
  %31 = load %struct.sock*, %struct.sock** %3, align 8
  %32 = call i32 @inet_csk_destroy_sock(%struct.sock* %31)
  br label %33

33:                                               ; preds = %18, %11
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @inet_ehash_insert(%struct.sock*, %struct.sock*) #1

declare dso_local i32 @sock_prot_inuse_add(i32, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @percpu_counter_inc(i32) #1

declare dso_local i32 @inet_sk_set_state(%struct.sock*, i32) #1

declare dso_local i32 @sock_set_flag(%struct.sock*, i32) #1

declare dso_local i32 @inet_csk_destroy_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
