; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_nsp_out.c_dn_mk_ack_header.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_nsp_out.c_dn_mk_ack_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.dn_scp = type { i32, i32, i16, i16 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.sock*, %struct.sk_buff*, i8, i32, i32)* @dn_mk_ack_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @dn_mk_ack_header(%struct.sock* %0, %struct.sk_buff* %1, i8 zeroext %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dn_scp*, align 8
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i32*, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i8 %2, i8* %8, align 1
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.sock*, %struct.sock** %6, align 8
  %16 = call %struct.dn_scp* @DN_SK(%struct.sock* %15)
  store %struct.dn_scp* %16, %struct.dn_scp** %11, align 8
  %17 = load %struct.dn_scp*, %struct.dn_scp** %11, align 8
  %18 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 4095
  %21 = trunc i32 %20 to i16
  store i16 %21, i16* %12, align 2
  %22 = load %struct.dn_scp*, %struct.dn_scp** %11, align 8
  %23 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 4095
  %26 = trunc i32 %25 to i16
  store i16 %26, i16* %13, align 2
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 9
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUG_ON(i32 %29)
  %31 = load i16, i16* %12, align 2
  %32 = load %struct.dn_scp*, %struct.dn_scp** %11, align 8
  %33 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %32, i32 0, i32 2
  store i16 %31, i16* %33, align 4
  %34 = load i16, i16* %13, align 2
  %35 = load %struct.dn_scp*, %struct.dn_scp** %11, align 8
  %36 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %35, i32 0, i32 3
  store i16 %34, i16* %36, align 2
  %37 = load i16, i16* %12, align 2
  %38 = zext i16 %37 to i32
  %39 = or i32 %38, 32768
  %40 = trunc i32 %39 to i16
  store i16 %40, i16* %12, align 2
  %41 = load i16, i16* %13, align 2
  %42 = zext i16 %41 to i32
  %43 = or i32 %42, 32768
  %44 = trunc i32 %43 to i16
  store i16 %44, i16* %13, align 2
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %5
  %48 = load i16, i16* %12, align 2
  %49 = load i16, i16* %13, align 2
  %50 = call i32 @swap(i16 zeroext %48, i16 zeroext %49)
  br label %51

51:                                               ; preds = %47, %5
  %52 = load i16, i16* %13, align 2
  %53 = zext i16 %52 to i32
  %54 = or i32 %53, 8192
  %55 = trunc i32 %54 to i16
  store i16 %55, i16* %13, align 2
  %56 = load %struct.dn_scp*, %struct.dn_scp** %11, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %58 = load i8, i8* %8, align 1
  %59 = load i32, i32* %9, align 4
  %60 = call i32* @dn_mk_common_header(%struct.dn_scp* %56, %struct.sk_buff* %57, i8 zeroext %58, i32 %59)
  store i32* %60, i32** %14, align 8
  %61 = load i16, i16* %12, align 2
  %62 = call i8* @cpu_to_le16(i16 zeroext %61)
  %63 = ptrtoint i8* %62 to i32
  %64 = load i32*, i32** %14, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %14, align 8
  store i32 %63, i32* %64, align 4
  %66 = load i16, i16* %13, align 2
  %67 = call i8* @cpu_to_le16(i16 zeroext %66)
  %68 = ptrtoint i8* %67 to i32
  %69 = load i32*, i32** %14, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %14, align 8
  store i32 %68, i32* %69, align 4
  %71 = load i32*, i32** %14, align 8
  ret i32* %71
}

declare dso_local %struct.dn_scp* @DN_SK(%struct.sock*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @swap(i16 zeroext, i16 zeroext) #1

declare dso_local i32* @dn_mk_common_header(%struct.dn_scp*, %struct.sk_buff*, i8 zeroext, i32) #1

declare dso_local i8* @cpu_to_le16(i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
