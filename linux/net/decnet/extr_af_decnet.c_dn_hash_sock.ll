; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_af_decnet.c_dn_hash_sock.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_af_decnet.c_dn_hash_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.dn_scp = type { i32 }
%struct.hlist_head = type { i32 }

@EUSERS = common dso_local global i32 0, align 4
@dn_hash_lock = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @dn_hash_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_hash_sock(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.dn_scp*, align 8
  %4 = alloca %struct.hlist_head*, align 8
  %5 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call %struct.dn_scp* @DN_SK(%struct.sock* %6)
  store %struct.dn_scp* %7, %struct.dn_scp** %3, align 8
  %8 = load i32, i32* @EUSERS, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.sock*, %struct.sock** %2, align 8
  %11 = call i32 @sk_hashed(%struct.sock* %10)
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = call i32 @write_lock_bh(i32* @dn_hash_lock)
  %14 = load %struct.dn_scp*, %struct.dn_scp** %3, align 8
  %15 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.sock*, %struct.sock** %2, align 8
  %20 = call i32 @port_alloc(%struct.sock* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  br label %34

23:                                               ; preds = %18, %1
  %24 = load i32, i32* @EADDRINUSE, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  %26 = load %struct.sock*, %struct.sock** %2, align 8
  %27 = call %struct.hlist_head* @dn_find_list(%struct.sock* %26)
  store %struct.hlist_head* %27, %struct.hlist_head** %4, align 8
  %28 = icmp eq %struct.hlist_head* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %34

30:                                               ; preds = %23
  %31 = load %struct.sock*, %struct.sock** %2, align 8
  %32 = load %struct.hlist_head*, %struct.hlist_head** %4, align 8
  %33 = call i32 @sk_add_node(%struct.sock* %31, %struct.hlist_head* %32)
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %30, %29, %22
  %35 = call i32 @write_unlock_bh(i32* @dn_hash_lock)
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local %struct.dn_scp* @DN_SK(%struct.sock*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @sk_hashed(%struct.sock*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @port_alloc(%struct.sock*) #1

declare dso_local %struct.hlist_head* @dn_find_list(%struct.sock*) #1

declare dso_local i32 @sk_add_node(%struct.sock*, %struct.hlist_head*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
