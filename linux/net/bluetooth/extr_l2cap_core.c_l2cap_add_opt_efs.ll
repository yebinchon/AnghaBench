; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_add_opt_efs.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_add_opt_efs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i32, i32, i32, i32, i32 }
%struct.l2cap_conf_efs = type { i32, i8*, i8*, i8*, i8*, i32 }

@L2CAP_DEFAULT_ACC_LAT = common dso_local global i32 0, align 4
@L2CAP_EFS_DEFAULT_FLUSH_TO = common dso_local global i32 0, align 4
@L2CAP_SERV_BESTEFFORT = common dso_local global i32 0, align 4
@L2CAP_CONF_EFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, %struct.l2cap_chan*, i64)* @l2cap_add_opt_efs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_add_opt_efs(i8** %0, %struct.l2cap_chan* %1, i64 %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca %struct.l2cap_chan*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.l2cap_conf_efs, align 8
  store i8** %0, i8*** %4, align 8
  store %struct.l2cap_chan* %1, %struct.l2cap_chan** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %9 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %52 [
    i32 129, label %11
    i32 128, label %36
  ]

11:                                               ; preds = %3
  %12 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %13 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.l2cap_conf_efs, %struct.l2cap_conf_efs* %7, i32 0, i32 0
  store i32 %14, i32* %15, align 8
  %16 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %17 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.l2cap_conf_efs, %struct.l2cap_conf_efs* %7, i32 0, i32 5
  store i32 %18, i32* %19, align 8
  %20 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %21 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @cpu_to_le16(i32 %22)
  %24 = getelementptr inbounds %struct.l2cap_conf_efs, %struct.l2cap_conf_efs* %7, i32 0, i32 4
  store i8* %23, i8** %24, align 8
  %25 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %26 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @cpu_to_le32(i32 %27)
  %29 = getelementptr inbounds %struct.l2cap_conf_efs, %struct.l2cap_conf_efs* %7, i32 0, i32 3
  store i8* %28, i8** %29, align 8
  %30 = load i32, i32* @L2CAP_DEFAULT_ACC_LAT, align 4
  %31 = call i8* @cpu_to_le32(i32 %30)
  %32 = getelementptr inbounds %struct.l2cap_conf_efs, %struct.l2cap_conf_efs* %7, i32 0, i32 2
  store i8* %31, i8** %32, align 8
  %33 = load i32, i32* @L2CAP_EFS_DEFAULT_FLUSH_TO, align 4
  %34 = call i8* @cpu_to_le32(i32 %33)
  %35 = getelementptr inbounds %struct.l2cap_conf_efs, %struct.l2cap_conf_efs* %7, i32 0, i32 1
  store i8* %34, i8** %35, align 8
  br label %53

36:                                               ; preds = %3
  %37 = getelementptr inbounds %struct.l2cap_conf_efs, %struct.l2cap_conf_efs* %7, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load i32, i32* @L2CAP_SERV_BESTEFFORT, align 4
  %39 = getelementptr inbounds %struct.l2cap_conf_efs, %struct.l2cap_conf_efs* %7, i32 0, i32 5
  store i32 %38, i32* %39, align 8
  %40 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %41 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @cpu_to_le16(i32 %42)
  %44 = getelementptr inbounds %struct.l2cap_conf_efs, %struct.l2cap_conf_efs* %7, i32 0, i32 4
  store i8* %43, i8** %44, align 8
  %45 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %46 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @cpu_to_le32(i32 %47)
  %49 = getelementptr inbounds %struct.l2cap_conf_efs, %struct.l2cap_conf_efs* %7, i32 0, i32 3
  store i8* %48, i8** %49, align 8
  %50 = getelementptr inbounds %struct.l2cap_conf_efs, %struct.l2cap_conf_efs* %7, i32 0, i32 2
  store i8* null, i8** %50, align 8
  %51 = getelementptr inbounds %struct.l2cap_conf_efs, %struct.l2cap_conf_efs* %7, i32 0, i32 1
  store i8* null, i8** %51, align 8
  br label %53

52:                                               ; preds = %3
  br label %59

53:                                               ; preds = %36, %11
  %54 = load i8**, i8*** %4, align 8
  %55 = load i32, i32* @L2CAP_CONF_EFS, align 4
  %56 = ptrtoint %struct.l2cap_conf_efs* %7 to i64
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @l2cap_add_conf_opt(i8** %54, i32 %55, i32 48, i64 %56, i64 %57)
  br label %59

59:                                               ; preds = %53, %52
  ret void
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @l2cap_add_conf_opt(i8**, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
