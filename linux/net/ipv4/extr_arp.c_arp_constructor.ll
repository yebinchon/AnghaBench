; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_arp.c_arp_constructor.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_arp.c_arp_constructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.neighbour = type { i32, %struct.TYPE_8__*, i32, i64, i32, i32, i64, %struct.net_device* }
%struct.net_device = type { i32, %struct.TYPE_6__*, i32, i32*, i32* }
%struct.TYPE_6__ = type { i64 }
%struct.in_device = type { %struct.neigh_parms* }
%struct.neigh_parms = type { i32 }

@INADDR_ANY = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@arp_tbl = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@NUD_NOARP = common dso_local global i8* null, align 8
@arp_direct_ops = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@neigh_direct_output = common dso_local global i32 0, align 4
@RTN_MULTICAST = common dso_local global i32 0, align 4
@IFF_NOARP = common dso_local global i32 0, align 4
@RTN_BROADCAST = common dso_local global i32 0, align 4
@arp_hh_ops = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@arp_generic_ops = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@NUD_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.neighbour*)* @arp_constructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arp_constructor(%struct.neighbour* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.neighbour*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.in_device*, align 8
  %7 = alloca %struct.neigh_parms*, align 8
  %8 = alloca i32, align 4
  store %struct.neighbour* %0, %struct.neighbour** %3, align 8
  %9 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %10 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %9, i32 0, i32 7
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %5, align 8
  %12 = load i32, i32* @INADDR_ANY, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @IFF_LOOPBACK, align 4
  %17 = load i32, i32* @IFF_POINTOPOINT, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %23 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %22, i32 0, i32 6
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @arp_tbl, i32 0, i32 0), align 4
  %26 = call i32 @memcpy(i64 %24, i32* %8, i32 %25)
  br label %27

27:                                               ; preds = %21, %1
  %28 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %29 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %28, i32 0, i32 6
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i32*
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %4, align 4
  %33 = call i32 (...) @rcu_read_lock()
  %34 = load %struct.net_device*, %struct.net_device** %5, align 8
  %35 = call %struct.in_device* @__in_dev_get_rcu(%struct.net_device* %34)
  store %struct.in_device* %35, %struct.in_device** %6, align 8
  %36 = load %struct.in_device*, %struct.in_device** %6, align 8
  %37 = icmp ne %struct.in_device* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %27
  %39 = call i32 (...) @rcu_read_unlock()
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %185

42:                                               ; preds = %27
  %43 = load %struct.net_device*, %struct.net_device** %5, align 8
  %44 = call i32 @dev_net(%struct.net_device* %43)
  %45 = load %struct.net_device*, %struct.net_device** %5, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @inet_addr_type_dev_table(i32 %44, %struct.net_device* %45, i32 %46)
  %48 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %49 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  %50 = load %struct.in_device*, %struct.in_device** %6, align 8
  %51 = getelementptr inbounds %struct.in_device, %struct.in_device* %50, i32 0, i32 0
  %52 = load %struct.neigh_parms*, %struct.neigh_parms** %51, align 8
  store %struct.neigh_parms* %52, %struct.neigh_parms** %7, align 8
  %53 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %54 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @__neigh_parms_put(i32 %55)
  %57 = load %struct.neigh_parms*, %struct.neigh_parms** %7, align 8
  %58 = call i32 @neigh_parms_clone(%struct.neigh_parms* %57)
  %59 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %60 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 4
  %61 = call i32 (...) @rcu_read_unlock()
  %62 = load %struct.net_device*, %struct.net_device** %5, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 1
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = icmp ne %struct.TYPE_6__* %64, null
  br i1 %65, label %76, label %66

66:                                               ; preds = %42
  %67 = load i8*, i8** @NUD_NOARP, align 8
  %68 = ptrtoint i8* %67 to i32
  %69 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %70 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %72 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %71, i32 0, i32 1
  store %struct.TYPE_8__* @arp_direct_ops, %struct.TYPE_8__** %72, align 8
  %73 = load i32, i32* @neigh_direct_output, align 4
  %74 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %75 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  br label %184

76:                                               ; preds = %42
  %77 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %78 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @RTN_MULTICAST, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %76
  %83 = load i8*, i8** @NUD_NOARP, align 8
  %84 = ptrtoint i8* %83 to i32
  %85 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %86 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* %4, align 4
  %88 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %89 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.net_device*, %struct.net_device** %5, align 8
  %92 = call i32 @arp_mc_map(i32 %87, i64 %90, %struct.net_device* %91, i32 1)
  br label %147

93:                                               ; preds = %76
  %94 = load %struct.net_device*, %struct.net_device** %5, align 8
  %95 = getelementptr inbounds %struct.net_device, %struct.net_device* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @IFF_NOARP, align 4
  %98 = load i32, i32* @IFF_LOOPBACK, align 4
  %99 = or i32 %97, %98
  %100 = and i32 %96, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %117

102:                                              ; preds = %93
  %103 = load i8*, i8** @NUD_NOARP, align 8
  %104 = ptrtoint i8* %103 to i32
  %105 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %106 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %108 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.net_device*, %struct.net_device** %5, align 8
  %111 = getelementptr inbounds %struct.net_device, %struct.net_device* %110, i32 0, i32 4
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.net_device*, %struct.net_device** %5, align 8
  %114 = getelementptr inbounds %struct.net_device, %struct.net_device* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @memcpy(i64 %109, i32* %112, i32 %115)
  br label %146

117:                                              ; preds = %93
  %118 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %119 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @RTN_BROADCAST, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %130, label %123

123:                                              ; preds = %117
  %124 = load %struct.net_device*, %struct.net_device** %5, align 8
  %125 = getelementptr inbounds %struct.net_device, %struct.net_device* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @IFF_POINTOPOINT, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %145

130:                                              ; preds = %123, %117
  %131 = load i8*, i8** @NUD_NOARP, align 8
  %132 = ptrtoint i8* %131 to i32
  %133 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %134 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %136 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.net_device*, %struct.net_device** %5, align 8
  %139 = getelementptr inbounds %struct.net_device, %struct.net_device* %138, i32 0, i32 3
  %140 = load i32*, i32** %139, align 8
  %141 = load %struct.net_device*, %struct.net_device** %5, align 8
  %142 = getelementptr inbounds %struct.net_device, %struct.net_device* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @memcpy(i64 %137, i32* %140, i32 %143)
  br label %145

145:                                              ; preds = %130, %123
  br label %146

146:                                              ; preds = %145, %102
  br label %147

147:                                              ; preds = %146, %82
  %148 = load %struct.net_device*, %struct.net_device** %5, align 8
  %149 = getelementptr inbounds %struct.net_device, %struct.net_device* %148, i32 0, i32 1
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %147
  %155 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %156 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %155, i32 0, i32 1
  store %struct.TYPE_8__* @arp_hh_ops, %struct.TYPE_8__** %156, align 8
  br label %160

157:                                              ; preds = %147
  %158 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %159 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %158, i32 0, i32 1
  store %struct.TYPE_8__* @arp_generic_ops, %struct.TYPE_8__** %159, align 8
  br label %160

160:                                              ; preds = %157, %154
  %161 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %162 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @NUD_VALID, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %160
  %168 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %169 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %168, i32 0, i32 1
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %174 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %173, i32 0, i32 2
  store i32 %172, i32* %174, align 8
  br label %183

175:                                              ; preds = %160
  %176 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %177 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %176, i32 0, i32 1
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %182 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %181, i32 0, i32 2
  store i32 %180, i32* %182, align 8
  br label %183

183:                                              ; preds = %175, %167
  br label %184

184:                                              ; preds = %183, %66
  store i32 0, i32* %2, align 4
  br label %185

185:                                              ; preds = %184, %38
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.in_device* @__in_dev_get_rcu(%struct.net_device*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @inet_addr_type_dev_table(i32, %struct.net_device*, i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @__neigh_parms_put(i32) #1

declare dso_local i32 @neigh_parms_clone(%struct.neigh_parms*) #1

declare dso_local i32 @arp_mc_map(i32, i64, %struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
