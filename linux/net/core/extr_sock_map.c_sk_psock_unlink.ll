; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_sock_map.c_sk_psock_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_sock_map.c_sk_psock_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_psock_link = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sk_psock_unlink(%struct.sock* %0, %struct.sk_psock_link* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_psock_link*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_psock_link* %1, %struct.sk_psock_link** %4, align 8
  %5 = load %struct.sk_psock_link*, %struct.sk_psock_link** %4, align 8
  %6 = getelementptr inbounds %struct.sk_psock_link, %struct.sk_psock_link* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %26 [
    i32 128, label %10
    i32 129, label %18
  ]

10:                                               ; preds = %2
  %11 = load %struct.sk_psock_link*, %struct.sk_psock_link** %4, align 8
  %12 = getelementptr inbounds %struct.sk_psock_link, %struct.sk_psock_link* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = load %struct.sk_psock_link*, %struct.sk_psock_link** %4, align 8
  %16 = getelementptr inbounds %struct.sk_psock_link, %struct.sk_psock_link* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  call void @sock_map_delete_from_link(%struct.TYPE_3__* %13, %struct.sock* %14, i32 %17)
  br label %27

18:                                               ; preds = %2
  %19 = load %struct.sk_psock_link*, %struct.sk_psock_link** %4, align 8
  %20 = getelementptr inbounds %struct.sk_psock_link, %struct.sk_psock_link* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load %struct.sock*, %struct.sock** %3, align 8
  %23 = load %struct.sk_psock_link*, %struct.sk_psock_link** %4, align 8
  %24 = getelementptr inbounds %struct.sk_psock_link, %struct.sk_psock_link* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  call void @sock_hash_delete_from_link(%struct.TYPE_3__* %21, %struct.sock* %22, i32 %25)
  br label %27

26:                                               ; preds = %2
  br label %27

27:                                               ; preds = %10, %18, %26
  ret void
}

declare dso_local void @sock_map_delete_from_link(%struct.TYPE_3__*, %struct.sock*, i32) #1

declare dso_local void @sock_hash_delete_from_link(%struct.TYPE_3__*, %struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
