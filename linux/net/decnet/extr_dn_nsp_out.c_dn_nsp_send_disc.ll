; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_nsp_out.c_dn_nsp_send_disc.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_nsp_out.c_dn_nsp_send_disc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.dn_scp = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@NSP_DISCINIT = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dn_nsp_send_disc(%struct.sock* %0, i8 zeroext %1, i16 zeroext %2, i32 %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca %struct.dn_scp*, align 8
  %10 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store i8 %1, i8* %6, align 1
  store i16 %2, i16* %7, align 2
  store i32 %3, i32* %8, align 4
  %11 = load %struct.sock*, %struct.sock** %5, align 8
  %12 = call %struct.dn_scp* @DN_SK(%struct.sock* %11)
  store %struct.dn_scp* %12, %struct.dn_scp** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load i8, i8* %6, align 1
  %14 = zext i8 %13 to i32
  %15 = load i8, i8* @NSP_DISCINIT, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = load %struct.dn_scp*, %struct.dn_scp** %9, align 8
  %20 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @le16_to_cpu(i32 %22)
  %24 = ptrtoint i8* %23 to i32
  store i32 %24, i32* %10, align 4
  br label %25

25:                                               ; preds = %18, %4
  %26 = load i16, i16* %7, align 2
  %27 = zext i16 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load %struct.dn_scp*, %struct.dn_scp** %9, align 8
  %31 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @le16_to_cpu(i32 %33)
  %35 = ptrtoint i8* %34 to i16
  store i16 %35, i16* %7, align 2
  br label %36

36:                                               ; preds = %29, %25
  %37 = load %struct.sock*, %struct.sock** %5, align 8
  %38 = load i8, i8* %6, align 1
  %39 = load i16, i16* %7, align 2
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.sock*, %struct.sock** %5, align 8
  %42 = call i32 @__sk_dst_get(%struct.sock* %41)
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.dn_scp*, %struct.dn_scp** %9, align 8
  %45 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.dn_scp*, %struct.dn_scp** %9, align 8
  %49 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.dn_scp*, %struct.dn_scp** %9, align 8
  %52 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dn_nsp_do_disc(%struct.sock* %37, i8 zeroext %38, i16 zeroext %39, i32 %40, i32 %42, i32 %43, i32 %47, i32 %50, i32 %53)
  ret void
}

declare dso_local %struct.dn_scp* @DN_SK(%struct.sock*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @dn_nsp_do_disc(%struct.sock*, i8 zeroext, i16 zeroext, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__sk_dst_get(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
