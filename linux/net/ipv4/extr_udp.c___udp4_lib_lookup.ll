; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c___udp4_lib_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c___udp4_lib_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.net = type { i32 }
%struct.udp_table = type { i32, %struct.udp_hslot* }
%struct.udp_hslot = type { i32 }
%struct.sk_buff = type { i32 }

@INADDR_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @__udp4_lib_lookup(%struct.net* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct.udp_table* %7, %struct.sk_buff* %8) #0 {
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.net*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.udp_table*, align 8
  %19 = alloca %struct.sk_buff*, align 8
  %20 = alloca %struct.sock*, align 8
  %21 = alloca i16, align 2
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.udp_hslot*, align 8
  store %struct.net* %0, %struct.net** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store %struct.udp_table* %7, %struct.udp_table** %18, align 8
  store %struct.sk_buff* %8, %struct.sk_buff** %19, align 8
  %25 = load i32, i32* %15, align 4
  %26 = call zeroext i16 @ntohs(i32 %25)
  store i16 %26, i16* %21, align 2
  %27 = load %struct.net*, %struct.net** %11, align 8
  %28 = load i32, i32* %14, align 4
  %29 = load i16, i16* %21, align 2
  %30 = call i32 @ipv4_portaddr_hash(%struct.net* %27, i32 %28, i16 zeroext %29)
  store i32 %30, i32* %22, align 4
  %31 = load i32, i32* %22, align 4
  %32 = load %struct.udp_table*, %struct.udp_table** %18, align 8
  %33 = getelementptr inbounds %struct.udp_table, %struct.udp_table* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %31, %34
  store i32 %35, i32* %23, align 4
  %36 = load %struct.udp_table*, %struct.udp_table** %18, align 8
  %37 = getelementptr inbounds %struct.udp_table, %struct.udp_table* %36, i32 0, i32 1
  %38 = load %struct.udp_hslot*, %struct.udp_hslot** %37, align 8
  %39 = load i32, i32* %23, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %38, i64 %40
  store %struct.udp_hslot* %41, %struct.udp_hslot** %24, align 8
  %42 = load %struct.net*, %struct.net** %11, align 8
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %14, align 4
  %46 = load i16, i16* %21, align 2
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* %17, align 4
  %49 = load %struct.udp_hslot*, %struct.udp_hslot** %24, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %51 = call %struct.sock* @udp4_lib_lookup2(%struct.net* %42, i32 %43, i32 %44, i32 %45, i16 zeroext %46, i32 %47, i32 %48, %struct.udp_hslot* %49, %struct.sk_buff* %50)
  store %struct.sock* %51, %struct.sock** %20, align 8
  %52 = load %struct.sock*, %struct.sock** %20, align 8
  %53 = icmp ne %struct.sock* %52, null
  br i1 %53, label %82, label %54

54:                                               ; preds = %9
  %55 = load %struct.net*, %struct.net** %11, align 8
  %56 = load i32, i32* @INADDR_ANY, align 4
  %57 = call i32 @htonl(i32 %56)
  %58 = load i16, i16* %21, align 2
  %59 = call i32 @ipv4_portaddr_hash(%struct.net* %55, i32 %57, i16 zeroext %58)
  store i32 %59, i32* %22, align 4
  %60 = load i32, i32* %22, align 4
  %61 = load %struct.udp_table*, %struct.udp_table** %18, align 8
  %62 = getelementptr inbounds %struct.udp_table, %struct.udp_table* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %60, %63
  store i32 %64, i32* %23, align 4
  %65 = load %struct.udp_table*, %struct.udp_table** %18, align 8
  %66 = getelementptr inbounds %struct.udp_table, %struct.udp_table* %65, i32 0, i32 1
  %67 = load %struct.udp_hslot*, %struct.udp_hslot** %66, align 8
  %68 = load i32, i32* %23, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %67, i64 %69
  store %struct.udp_hslot* %70, %struct.udp_hslot** %24, align 8
  %71 = load %struct.net*, %struct.net** %11, align 8
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* @INADDR_ANY, align 4
  %75 = call i32 @htonl(i32 %74)
  %76 = load i16, i16* %21, align 2
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* %17, align 4
  %79 = load %struct.udp_hslot*, %struct.udp_hslot** %24, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %81 = call %struct.sock* @udp4_lib_lookup2(%struct.net* %71, i32 %72, i32 %73, i32 %75, i16 zeroext %76, i32 %77, i32 %78, %struct.udp_hslot* %79, %struct.sk_buff* %80)
  store %struct.sock* %81, %struct.sock** %20, align 8
  br label %82

82:                                               ; preds = %54, %9
  %83 = load %struct.sock*, %struct.sock** %20, align 8
  %84 = call i64 @IS_ERR(%struct.sock* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store %struct.sock* null, %struct.sock** %10, align 8
  br label %89

87:                                               ; preds = %82
  %88 = load %struct.sock*, %struct.sock** %20, align 8
  store %struct.sock* %88, %struct.sock** %10, align 8
  br label %89

89:                                               ; preds = %87, %86
  %90 = load %struct.sock*, %struct.sock** %10, align 8
  ret %struct.sock* %90
}

declare dso_local zeroext i16 @ntohs(i32) #1

declare dso_local i32 @ipv4_portaddr_hash(%struct.net*, i32, i16 zeroext) #1

declare dso_local %struct.sock* @udp4_lib_lookup2(%struct.net*, i32, i32, i32, i16 zeroext, i32, i32, %struct.udp_hslot*, %struct.sk_buff*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @IS_ERR(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
