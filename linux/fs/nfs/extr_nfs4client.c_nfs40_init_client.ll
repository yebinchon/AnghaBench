; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4client.c_nfs40_init_client.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4client.c_nfs40_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { %struct.nfs4_slot_table* }
%struct.nfs4_slot_table = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NFS4_MAX_SLOT_TABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"NFSv4.0 transport Slot table\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs40_init_client(%struct.nfs_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfs_client*, align 8
  %4 = alloca %struct.nfs4_slot_table*, align 8
  %5 = alloca i32, align 4
  store %struct.nfs_client* %0, %struct.nfs_client** %3, align 8
  %6 = load i32, i32* @GFP_NOFS, align 4
  %7 = call %struct.nfs4_slot_table* @kzalloc(i32 4, i32 %6)
  store %struct.nfs4_slot_table* %7, %struct.nfs4_slot_table** %4, align 8
  %8 = load %struct.nfs4_slot_table*, %struct.nfs4_slot_table** %4, align 8
  %9 = icmp eq %struct.nfs4_slot_table* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %27

13:                                               ; preds = %1
  %14 = load %struct.nfs4_slot_table*, %struct.nfs4_slot_table** %4, align 8
  %15 = load i32, i32* @NFS4_MAX_SLOT_TABLE, align 4
  %16 = call i32 @nfs4_setup_slot_table(%struct.nfs4_slot_table* %14, i32 %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load %struct.nfs4_slot_table*, %struct.nfs4_slot_table** %4, align 8
  %21 = call i32 @kfree(%struct.nfs4_slot_table* %20)
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %27

23:                                               ; preds = %13
  %24 = load %struct.nfs4_slot_table*, %struct.nfs4_slot_table** %4, align 8
  %25 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %26 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %25, i32 0, i32 0
  store %struct.nfs4_slot_table* %24, %struct.nfs4_slot_table** %26, align 8
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %23, %19, %10
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.nfs4_slot_table* @kzalloc(i32, i32) #1

declare dso_local i32 @nfs4_setup_slot_table(%struct.nfs4_slot_table*, i32, i8*) #1

declare dso_local i32 @kfree(%struct.nfs4_slot_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
