; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs_dev.c_nfs4_put_deviceid_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs_dev.c_nfs4_put_deviceid_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_deviceid_node = type { %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { {}* }

@NFS_DEVICEID_NOCACHE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_put_deviceid_node(%struct.nfs4_deviceid_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfs4_deviceid_node*, align 8
  store %struct.nfs4_deviceid_node* %0, %struct.nfs4_deviceid_node** %3, align 8
  %4 = load i32, i32* @NFS_DEVICEID_NOCACHE, align 4
  %5 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %3, align 8
  %6 = getelementptr inbounds %struct.nfs4_deviceid_node, %struct.nfs4_deviceid_node* %5, i32 0, i32 4
  %7 = call i64 @test_bit(i32 %4, i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %1
  %10 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %3, align 8
  %11 = getelementptr inbounds %struct.nfs4_deviceid_node, %struct.nfs4_deviceid_node* %10, i32 0, i32 1
  %12 = call i64 @atomic_add_unless(i32* %11, i32 -1, i32 2)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %40

15:                                               ; preds = %9
  %16 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %3, align 8
  %17 = getelementptr inbounds %struct.nfs4_deviceid_node, %struct.nfs4_deviceid_node* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %3, align 8
  %20 = getelementptr inbounds %struct.nfs4_deviceid_node, %struct.nfs4_deviceid_node* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %3, align 8
  %23 = getelementptr inbounds %struct.nfs4_deviceid_node, %struct.nfs4_deviceid_node* %22, i32 0, i32 2
  %24 = call i32 @nfs4_delete_deviceid(%struct.TYPE_2__* %18, i32 %21, i32* %23)
  br label %25

25:                                               ; preds = %15, %1
  %26 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %3, align 8
  %27 = getelementptr inbounds %struct.nfs4_deviceid_node, %struct.nfs4_deviceid_node* %26, i32 0, i32 1
  %28 = call i32 @atomic_dec_and_test(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %40

31:                                               ; preds = %25
  %32 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %3, align 8
  %33 = getelementptr inbounds %struct.nfs4_deviceid_node, %struct.nfs4_deviceid_node* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = bitcast {}** %35 to i32 (%struct.nfs4_deviceid_node*)**
  %37 = load i32 (%struct.nfs4_deviceid_node*)*, i32 (%struct.nfs4_deviceid_node*)** %36, align 8
  %38 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %3, align 8
  %39 = call i32 %37(%struct.nfs4_deviceid_node* %38)
  store i32 1, i32* %2, align 4
  br label %40

40:                                               ; preds = %31, %30, %14
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @atomic_add_unless(i32*, i32, i32) #1

declare dso_local i32 @nfs4_delete_deviceid(%struct.TYPE_2__*, i32, i32*) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
