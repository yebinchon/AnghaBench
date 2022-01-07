; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsfh.c_fsid_type_ok_for_exp.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsfh.c_fsid_type_ok_for_exp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_export = type { i32, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@FS_REQUIRES_DEV = common dso_local global i32 0, align 4
@NFSEXP_FSID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.svc_export*)* @fsid_type_ok_for_exp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsid_type_ok_for_exp(i32 %0, %struct.svc_export* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_export*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.svc_export* %1, %struct.svc_export** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %43 [
    i32 135, label %7
    i32 133, label %16
    i32 134, label %16
    i32 132, label %25
    i32 128, label %31
    i32 131, label %31
    i32 129, label %37
    i32 130, label %37
  ]

7:                                                ; preds = %2
  %8 = load %struct.svc_export*, %struct.svc_export** %5, align 8
  %9 = call %struct.TYPE_4__* @exp_sb(%struct.svc_export* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @old_valid_dev(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %44

15:                                               ; preds = %7
  br label %16

16:                                               ; preds = %2, %2, %15
  %17 = load %struct.svc_export*, %struct.svc_export** %5, align 8
  %18 = call %struct.TYPE_4__* @exp_sb(%struct.svc_export* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @FS_REQUIRES_DEV, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %3, align 4
  br label %44

25:                                               ; preds = %2
  %26 = load %struct.svc_export*, %struct.svc_export** %5, align 8
  %27 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @NFSEXP_FSID, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %3, align 4
  br label %44

31:                                               ; preds = %2, %2
  %32 = load %struct.svc_export*, %struct.svc_export** %5, align 8
  %33 = call i32 @is_root_export(%struct.svc_export* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %44

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %2, %2, %36
  %38 = load %struct.svc_export*, %struct.svc_export** %5, align 8
  %39 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %3, align 4
  br label %44

43:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %37, %35, %25, %16, %14
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @old_valid_dev(i32) #1

declare dso_local %struct.TYPE_4__* @exp_sb(%struct.svc_export*) #1

declare dso_local i32 @is_root_export(%struct.svc_export*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
