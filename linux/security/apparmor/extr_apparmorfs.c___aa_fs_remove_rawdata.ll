; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c___aa_fs_remove_rawdata.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c___aa_fs_remove_rawdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_loaddata = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__aa_fs_remove_rawdata(%struct.aa_loaddata* %0) #0 {
  %2 = alloca %struct.aa_loaddata*, align 8
  store %struct.aa_loaddata* %0, %struct.aa_loaddata** %2, align 8
  %3 = load %struct.aa_loaddata*, %struct.aa_loaddata** %2, align 8
  %4 = getelementptr inbounds %struct.aa_loaddata, %struct.aa_loaddata* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load %struct.aa_loaddata*, %struct.aa_loaddata** %2, align 8
  %9 = getelementptr inbounds %struct.aa_loaddata, %struct.aa_loaddata* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @mutex_is_locked(i32* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br label %15

15:                                               ; preds = %7, %1
  %16 = phi i1 [ false, %1 ], [ %14, %7 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @AA_BUG(i32 %17)
  %19 = load %struct.aa_loaddata*, %struct.aa_loaddata** %2, align 8
  %20 = getelementptr inbounds %struct.aa_loaddata, %struct.aa_loaddata* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %15
  %24 = load %struct.aa_loaddata*, %struct.aa_loaddata** %2, align 8
  %25 = call i32 @remove_rawdata_dents(%struct.aa_loaddata* %24)
  %26 = load %struct.aa_loaddata*, %struct.aa_loaddata** %2, align 8
  %27 = getelementptr inbounds %struct.aa_loaddata, %struct.aa_loaddata* %26, i32 0, i32 1
  %28 = call i32 @list_del_init(i32* %27)
  %29 = load %struct.aa_loaddata*, %struct.aa_loaddata** %2, align 8
  %30 = getelementptr inbounds %struct.aa_loaddata, %struct.aa_loaddata* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = call i32 @aa_put_ns(%struct.TYPE_2__* %31)
  %33 = load %struct.aa_loaddata*, %struct.aa_loaddata** %2, align 8
  %34 = getelementptr inbounds %struct.aa_loaddata, %struct.aa_loaddata* %33, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %34, align 8
  br label %35

35:                                               ; preds = %23, %15
  ret void
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @remove_rawdata_dents(%struct.aa_loaddata*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @aa_put_ns(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
