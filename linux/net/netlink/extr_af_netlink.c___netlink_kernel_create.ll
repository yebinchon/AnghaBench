; ModuleID = '/home/carl/AnghaBench/linux/net/netlink/extr_af_netlink.c___netlink_kernel_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlink/extr_af_netlink.c___netlink_kernel_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i32, i32, i32, %struct.module*, %struct.mutex*, i32 }
%struct.module = type { i32 }
%struct.mutex = type { i32 }
%struct.sock = type { i32 }
%struct.net = type { i32 }
%struct.netlink_kernel_cfg = type { i32, i64, i32, i32, i32, i64, %struct.mutex* }
%struct.socket = type { %struct.sock* }
%struct.netlink_sock = type { i32, i64 }
%struct.listeners = type { i32 }

@nl_table = common dso_local global %struct.TYPE_2__* null, align 8
@MAX_LINKS = common dso_local global i32 0, align 4
@PF_NETLINK = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@netlink_data_ready = common dso_local global i32 0, align 4
@NETLINK_F_KERNEL_SOCKET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @__netlink_kernel_create(%struct.net* %0, i32 %1, %struct.module* %2, %struct.netlink_kernel_cfg* %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.module*, align 8
  %9 = alloca %struct.netlink_kernel_cfg*, align 8
  %10 = alloca %struct.socket*, align 8
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.netlink_sock*, align 8
  %13 = alloca %struct.listeners*, align 8
  %14 = alloca %struct.mutex*, align 8
  %15 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.module* %2, %struct.module** %8, align 8
  store %struct.netlink_kernel_cfg* %3, %struct.netlink_kernel_cfg** %9, align 8
  store %struct.listeners* null, %struct.listeners** %13, align 8
  %16 = load %struct.netlink_kernel_cfg*, %struct.netlink_kernel_cfg** %9, align 8
  %17 = icmp ne %struct.netlink_kernel_cfg* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load %struct.netlink_kernel_cfg*, %struct.netlink_kernel_cfg** %9, align 8
  %20 = getelementptr inbounds %struct.netlink_kernel_cfg, %struct.netlink_kernel_cfg* %19, i32 0, i32 6
  %21 = load %struct.mutex*, %struct.mutex** %20, align 8
  br label %23

22:                                               ; preds = %4
  br label %23

23:                                               ; preds = %22, %18
  %24 = phi %struct.mutex* [ %21, %18 ], [ null, %22 ]
  store %struct.mutex* %24, %struct.mutex** %14, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl_table, align 8
  %26 = icmp ne %struct.TYPE_2__* %25, null
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %23
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @MAX_LINKS, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %23
  store %struct.sock* null, %struct.sock** %5, align 8
  br label %211

37:                                               ; preds = %32
  %38 = load i32, i32* @PF_NETLINK, align 4
  %39 = load i32, i32* @SOCK_DGRAM, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @sock_create_lite(i32 %38, i32 %39, i32 %40, %struct.socket** %10)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store %struct.sock* null, %struct.sock** %5, align 8
  br label %211

44:                                               ; preds = %37
  %45 = load %struct.net*, %struct.net** %6, align 8
  %46 = load %struct.socket*, %struct.socket** %10, align 8
  %47 = load %struct.mutex*, %struct.mutex** %14, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i64 @__netlink_create(%struct.net* %45, %struct.socket* %46, %struct.mutex* %47, i32 %48, i32 1)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %208

52:                                               ; preds = %44
  %53 = load %struct.socket*, %struct.socket** %10, align 8
  %54 = getelementptr inbounds %struct.socket, %struct.socket* %53, i32 0, i32 0
  %55 = load %struct.sock*, %struct.sock** %54, align 8
  store %struct.sock* %55, %struct.sock** %11, align 8
  %56 = load %struct.netlink_kernel_cfg*, %struct.netlink_kernel_cfg** %9, align 8
  %57 = icmp ne %struct.netlink_kernel_cfg* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load %struct.netlink_kernel_cfg*, %struct.netlink_kernel_cfg** %9, align 8
  %60 = getelementptr inbounds %struct.netlink_kernel_cfg, %struct.netlink_kernel_cfg* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %61, 32
  br i1 %62, label %63, label %64

63:                                               ; preds = %58, %52
  store i32 32, i32* %15, align 4
  br label %68

64:                                               ; preds = %58
  %65 = load %struct.netlink_kernel_cfg*, %struct.netlink_kernel_cfg** %9, align 8
  %66 = getelementptr inbounds %struct.netlink_kernel_cfg, %struct.netlink_kernel_cfg* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %15, align 4
  br label %68

68:                                               ; preds = %64, %63
  %69 = load i32, i32* %15, align 4
  %70 = call i64 @NLGRPSZ(i32 %69)
  %71 = add i64 4, %70
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call %struct.listeners* @kzalloc(i64 %71, i32 %72)
  store %struct.listeners* %73, %struct.listeners** %13, align 8
  %74 = load %struct.listeners*, %struct.listeners** %13, align 8
  %75 = icmp ne %struct.listeners* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %68
  br label %203

77:                                               ; preds = %68
  %78 = load i32, i32* @netlink_data_ready, align 4
  %79 = load %struct.sock*, %struct.sock** %11, align 8
  %80 = getelementptr inbounds %struct.sock, %struct.sock* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load %struct.netlink_kernel_cfg*, %struct.netlink_kernel_cfg** %9, align 8
  %82 = icmp ne %struct.netlink_kernel_cfg* %81, null
  br i1 %82, label %83, label %95

83:                                               ; preds = %77
  %84 = load %struct.netlink_kernel_cfg*, %struct.netlink_kernel_cfg** %9, align 8
  %85 = getelementptr inbounds %struct.netlink_kernel_cfg, %struct.netlink_kernel_cfg* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %83
  %89 = load %struct.netlink_kernel_cfg*, %struct.netlink_kernel_cfg** %9, align 8
  %90 = getelementptr inbounds %struct.netlink_kernel_cfg, %struct.netlink_kernel_cfg* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.sock*, %struct.sock** %11, align 8
  %93 = call %struct.netlink_sock* @nlk_sk(%struct.sock* %92)
  %94 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %93, i32 0, i32 1
  store i64 %91, i64* %94, align 8
  br label %95

95:                                               ; preds = %88, %83, %77
  %96 = load %struct.sock*, %struct.sock** %11, align 8
  %97 = call i64 @netlink_insert(%struct.sock* %96, i32 0)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  br label %203

100:                                              ; preds = %95
  %101 = load %struct.sock*, %struct.sock** %11, align 8
  %102 = call %struct.netlink_sock* @nlk_sk(%struct.sock* %101)
  store %struct.netlink_sock* %102, %struct.netlink_sock** %12, align 8
  %103 = load i32, i32* @NETLINK_F_KERNEL_SOCKET, align 4
  %104 = load %struct.netlink_sock*, %struct.netlink_sock** %12, align 8
  %105 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 8
  %108 = call i32 (...) @netlink_table_grab()
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl_table, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %190, label %116

116:                                              ; preds = %100
  %117 = load i32, i32* %15, align 4
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl_table, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  store i32 %117, i32* %122, align 4
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl_table, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 8
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.listeners*, %struct.listeners** %13, align 8
  %130 = call i32 @rcu_assign_pointer(i32 %128, %struct.listeners* %129)
  %131 = load %struct.mutex*, %struct.mutex** %14, align 8
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl_table, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 7
  store %struct.mutex* %131, %struct.mutex** %136, align 8
  %137 = load %struct.module*, %struct.module** %8, align 8
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl_table, align 8
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 6
  store %struct.module* %137, %struct.module** %142, align 8
  %143 = load %struct.netlink_kernel_cfg*, %struct.netlink_kernel_cfg** %9, align 8
  %144 = icmp ne %struct.netlink_kernel_cfg* %143, null
  br i1 %144, label %145, label %184

145:                                              ; preds = %116
  %146 = load %struct.netlink_kernel_cfg*, %struct.netlink_kernel_cfg** %9, align 8
  %147 = getelementptr inbounds %struct.netlink_kernel_cfg, %struct.netlink_kernel_cfg* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl_table, align 8
  %150 = load i32, i32* %7, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 5
  store i32 %148, i32* %153, align 8
  %154 = load %struct.netlink_kernel_cfg*, %struct.netlink_kernel_cfg** %9, align 8
  %155 = getelementptr inbounds %struct.netlink_kernel_cfg, %struct.netlink_kernel_cfg* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl_table, align 8
  %158 = load i32, i32* %7, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 4
  store i32 %156, i32* %161, align 4
  %162 = load %struct.netlink_kernel_cfg*, %struct.netlink_kernel_cfg** %9, align 8
  %163 = getelementptr inbounds %struct.netlink_kernel_cfg, %struct.netlink_kernel_cfg* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl_table, align 8
  %166 = load i32, i32* %7, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 3
  store i32 %164, i32* %169, align 8
  %170 = load %struct.netlink_kernel_cfg*, %struct.netlink_kernel_cfg** %9, align 8
  %171 = getelementptr inbounds %struct.netlink_kernel_cfg, %struct.netlink_kernel_cfg* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %183

174:                                              ; preds = %145
  %175 = load %struct.netlink_kernel_cfg*, %struct.netlink_kernel_cfg** %9, align 8
  %176 = getelementptr inbounds %struct.netlink_kernel_cfg, %struct.netlink_kernel_cfg* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl_table, align 8
  %179 = load i32, i32* %7, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 2
  store i64 %177, i64* %182, align 8
  br label %183

183:                                              ; preds = %174, %145
  br label %184

184:                                              ; preds = %183, %116
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl_table, align 8
  %186 = load i32, i32* %7, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 0
  store i32 1, i32* %189, align 8
  br label %200

190:                                              ; preds = %100
  %191 = load %struct.listeners*, %struct.listeners** %13, align 8
  %192 = call i32 @kfree(%struct.listeners* %191)
  %193 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl_table, align 8
  %194 = load i32, i32* %7, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %197, align 8
  br label %200

200:                                              ; preds = %190, %184
  %201 = call i32 (...) @netlink_table_ungrab()
  %202 = load %struct.sock*, %struct.sock** %11, align 8
  store %struct.sock* %202, %struct.sock** %5, align 8
  br label %211

203:                                              ; preds = %99, %76
  %204 = load %struct.listeners*, %struct.listeners** %13, align 8
  %205 = call i32 @kfree(%struct.listeners* %204)
  %206 = load %struct.sock*, %struct.sock** %11, align 8
  %207 = call i32 @netlink_kernel_release(%struct.sock* %206)
  store %struct.sock* null, %struct.sock** %5, align 8
  br label %211

208:                                              ; preds = %51
  %209 = load %struct.socket*, %struct.socket** %10, align 8
  %210 = call i32 @sock_release(%struct.socket* %209)
  store %struct.sock* null, %struct.sock** %5, align 8
  br label %211

211:                                              ; preds = %208, %203, %200, %43, %36
  %212 = load %struct.sock*, %struct.sock** %5, align 8
  ret %struct.sock* %212
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @sock_create_lite(i32, i32, i32, %struct.socket**) #1

declare dso_local i64 @__netlink_create(%struct.net*, %struct.socket*, %struct.mutex*, i32, i32) #1

declare dso_local %struct.listeners* @kzalloc(i64, i32) #1

declare dso_local i64 @NLGRPSZ(i32) #1

declare dso_local %struct.netlink_sock* @nlk_sk(%struct.sock*) #1

declare dso_local i64 @netlink_insert(%struct.sock*, i32) #1

declare dso_local i32 @netlink_table_grab(...) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.listeners*) #1

declare dso_local i32 @kfree(%struct.listeners*) #1

declare dso_local i32 @netlink_table_ungrab(...) #1

declare dso_local i32 @netlink_kernel_release(%struct.sock*) #1

declare dso_local i32 @sock_release(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
