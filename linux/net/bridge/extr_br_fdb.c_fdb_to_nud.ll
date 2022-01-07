; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_fdb.c_fdb_to_nud.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_fdb.c_fdb_to_nud.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i32 }
%struct.net_bridge_fdb_entry = type { i64, i64 }

@NUD_PERMANENT = common dso_local global i32 0, align 4
@NUD_NOARP = common dso_local global i32 0, align 4
@NUD_STALE = common dso_local global i32 0, align 4
@NUD_REACHABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_bridge*, %struct.net_bridge_fdb_entry*)* @fdb_to_nud to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdb_to_nud(%struct.net_bridge* %0, %struct.net_bridge_fdb_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_bridge*, align 8
  %5 = alloca %struct.net_bridge_fdb_entry*, align 8
  store %struct.net_bridge* %0, %struct.net_bridge** %4, align 8
  store %struct.net_bridge_fdb_entry* %1, %struct.net_bridge_fdb_entry** %5, align 8
  %6 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %5, align 8
  %7 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @NUD_PERMANENT, align 4
  store i32 %11, i32* %3, align 4
  br label %28

12:                                               ; preds = %2
  %13 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %5, align 8
  %14 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* @NUD_NOARP, align 4
  store i32 %18, i32* %3, align 4
  br label %28

19:                                               ; preds = %12
  %20 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %21 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %5, align 8
  %22 = call i64 @has_expired(%struct.net_bridge* %20, %struct.net_bridge_fdb_entry* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @NUD_STALE, align 4
  store i32 %25, i32* %3, align 4
  br label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @NUD_REACHABLE, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %26, %24, %17, %10
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i64 @has_expired(%struct.net_bridge*, %struct.net_bridge_fdb_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
