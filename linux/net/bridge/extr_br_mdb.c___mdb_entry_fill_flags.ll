; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_mdb.c___mdb_entry_fill_flags.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_mdb.c___mdb_entry_fill_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.br_mdb_entry = type { i8, i32 }

@MDB_PG_FLAGS_PERMANENT = common dso_local global i8 0, align 1
@MDB_PG_FLAGS_OFFLOAD = common dso_local global i8 0, align 1
@MDB_FLAGS_OFFLOAD = common dso_local global i32 0, align 4
@MDB_PG_FLAGS_FAST_LEAVE = common dso_local global i8 0, align 1
@MDB_FLAGS_FAST_LEAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.br_mdb_entry*, i8)* @__mdb_entry_fill_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__mdb_entry_fill_flags(%struct.br_mdb_entry* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.br_mdb_entry*, align 8
  %4 = alloca i8, align 1
  store %struct.br_mdb_entry* %0, %struct.br_mdb_entry** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %4, align 1
  %6 = zext i8 %5 to i32
  %7 = load i8, i8* @MDB_PG_FLAGS_PERMANENT, align 1
  %8 = zext i8 %7 to i32
  %9 = and i32 %6, %8
  %10 = trunc i32 %9 to i8
  %11 = load %struct.br_mdb_entry*, %struct.br_mdb_entry** %3, align 8
  %12 = getelementptr inbounds %struct.br_mdb_entry, %struct.br_mdb_entry* %11, i32 0, i32 0
  store i8 %10, i8* %12, align 4
  %13 = load %struct.br_mdb_entry*, %struct.br_mdb_entry** %3, align 8
  %14 = getelementptr inbounds %struct.br_mdb_entry, %struct.br_mdb_entry* %13, i32 0, i32 1
  store i32 0, i32* %14, align 4
  %15 = load i8, i8* %4, align 1
  %16 = zext i8 %15 to i32
  %17 = load i8, i8* @MDB_PG_FLAGS_OFFLOAD, align 1
  %18 = zext i8 %17 to i32
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load i32, i32* @MDB_FLAGS_OFFLOAD, align 4
  %23 = load %struct.br_mdb_entry*, %struct.br_mdb_entry** %3, align 8
  %24 = getelementptr inbounds %struct.br_mdb_entry, %struct.br_mdb_entry* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %21, %2
  %28 = load i8, i8* %4, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8, i8* @MDB_PG_FLAGS_FAST_LEAVE, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load i32, i32* @MDB_FLAGS_FAST_LEAVE, align 4
  %36 = load %struct.br_mdb_entry*, %struct.br_mdb_entry** %3, align 8
  %37 = getelementptr inbounds %struct.br_mdb_entry, %struct.br_mdb_entry* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %34, %27
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
