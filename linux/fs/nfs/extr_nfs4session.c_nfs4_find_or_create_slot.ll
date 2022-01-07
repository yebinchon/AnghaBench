; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4session.c_nfs4_find_or_create_slot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4session.c_nfs4_find_or_create_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_slot = type { i64, %struct.nfs4_slot* }
%struct.nfs4_slot_table = type { i32, %struct.nfs4_slot* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs4_slot* (%struct.nfs4_slot_table*, i64, i64, i32)* @nfs4_find_or_create_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs4_slot* @nfs4_find_or_create_slot(%struct.nfs4_slot_table* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.nfs4_slot*, align 8
  %6 = alloca %struct.nfs4_slot_table*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfs4_slot**, align 8
  %11 = alloca %struct.nfs4_slot*, align 8
  store %struct.nfs4_slot_table* %0, %struct.nfs4_slot_table** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.nfs4_slot_table*, %struct.nfs4_slot_table** %6, align 8
  %13 = getelementptr inbounds %struct.nfs4_slot_table, %struct.nfs4_slot_table* %12, i32 0, i32 1
  store %struct.nfs4_slot** %13, %struct.nfs4_slot*** %10, align 8
  br label %14

14:                                               ; preds = %46, %4
  %15 = load %struct.nfs4_slot**, %struct.nfs4_slot*** %10, align 8
  %16 = load %struct.nfs4_slot*, %struct.nfs4_slot** %15, align 8
  %17 = icmp eq %struct.nfs4_slot* %16, null
  br i1 %17, label %18, label %36

18:                                               ; preds = %14
  %19 = load %struct.nfs4_slot_table*, %struct.nfs4_slot_table** %6, align 8
  %20 = load %struct.nfs4_slot_table*, %struct.nfs4_slot_table** %6, align 8
  %21 = getelementptr inbounds %struct.nfs4_slot_table, %struct.nfs4_slot_table* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call %struct.nfs4_slot* @nfs4_new_slot(%struct.nfs4_slot_table* %19, i32 %22, i64 %23, i32 %24)
  %26 = load %struct.nfs4_slot**, %struct.nfs4_slot*** %10, align 8
  store %struct.nfs4_slot* %25, %struct.nfs4_slot** %26, align 8
  %27 = load %struct.nfs4_slot**, %struct.nfs4_slot*** %10, align 8
  %28 = load %struct.nfs4_slot*, %struct.nfs4_slot** %27, align 8
  %29 = icmp eq %struct.nfs4_slot* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  br label %49

31:                                               ; preds = %18
  %32 = load %struct.nfs4_slot_table*, %struct.nfs4_slot_table** %6, align 8
  %33 = getelementptr inbounds %struct.nfs4_slot_table, %struct.nfs4_slot_table* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  br label %36

36:                                               ; preds = %31, %14
  %37 = load %struct.nfs4_slot**, %struct.nfs4_slot*** %10, align 8
  %38 = load %struct.nfs4_slot*, %struct.nfs4_slot** %37, align 8
  store %struct.nfs4_slot* %38, %struct.nfs4_slot** %11, align 8
  %39 = load %struct.nfs4_slot*, %struct.nfs4_slot** %11, align 8
  %40 = getelementptr inbounds %struct.nfs4_slot, %struct.nfs4_slot* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load %struct.nfs4_slot*, %struct.nfs4_slot** %11, align 8
  store %struct.nfs4_slot* %45, %struct.nfs4_slot** %5, align 8
  br label %53

46:                                               ; preds = %36
  %47 = load %struct.nfs4_slot*, %struct.nfs4_slot** %11, align 8
  %48 = getelementptr inbounds %struct.nfs4_slot, %struct.nfs4_slot* %47, i32 0, i32 1
  store %struct.nfs4_slot** %48, %struct.nfs4_slot*** %10, align 8
  br label %14

49:                                               ; preds = %30
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  %52 = call %struct.nfs4_slot* @ERR_PTR(i32 %51)
  store %struct.nfs4_slot* %52, %struct.nfs4_slot** %5, align 8
  br label %53

53:                                               ; preds = %49, %44
  %54 = load %struct.nfs4_slot*, %struct.nfs4_slot** %5, align 8
  ret %struct.nfs4_slot* %54
}

declare dso_local %struct.nfs4_slot* @nfs4_new_slot(%struct.nfs4_slot_table*, i32, i64, i32) #1

declare dso_local %struct.nfs4_slot* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
