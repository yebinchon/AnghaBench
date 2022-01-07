; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_state.c_xfrm_alloc_spi.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_state.c_xfrm_alloc_spi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i64, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.net = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i64 }

@ENOENT = common dso_local global i32 0, align 4
@XFRM_STATE_DEAD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfrm_alloc_spi(%struct.xfrm_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.xfrm_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.xfrm_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %16 = call %struct.net* @xs_net(%struct.xfrm_state* %15)
  store %struct.net* %16, %struct.net** %7, align 8
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @htonl(i32 %19)
  store i64 %20, i64* %11, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @htonl(i32 %21)
  store i64 %22, i64* %12, align 8
  %23 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %24 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %28 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %26, %30
  store i32 %31, i32* %13, align 4
  %32 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %33 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %32, i32 0, i32 0
  %34 = call i32 @spin_lock_bh(i32* %33)
  %35 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %36 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @XFRM_STATE_DEAD, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %3
  br label %172

42:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  %43 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %44 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %172

49:                                               ; preds = %42
  %50 = load i32, i32* @ENOENT, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %10, align 4
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* %12, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %81

55:                                               ; preds = %49
  %56 = load %struct.net*, %struct.net** %7, align 8
  %57 = load i32, i32* %13, align 4
  %58 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %59 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 2
  %61 = load i64, i64* %11, align 8
  %62 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %63 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %67 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call %struct.xfrm_state* @xfrm_state_lookup(%struct.net* %56, i32 %57, i32* %60, i64 %61, i32 %65, i32 %69)
  store %struct.xfrm_state* %70, %struct.xfrm_state** %9, align 8
  %71 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %72 = icmp ne %struct.xfrm_state* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %55
  %74 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %75 = call i32 @xfrm_state_put(%struct.xfrm_state* %74)
  br label %172

76:                                               ; preds = %55
  %77 = load i64, i64* %11, align 8
  %78 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %79 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  store i64 %77, i64* %80, align 8
  br label %129

81:                                               ; preds = %49
  store i32 0, i32* %14, align 4
  store i32 0, i32* %8, align 4
  br label %82

82:                                               ; preds = %125, %81
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %5, align 4
  %86 = sub nsw i32 %84, %85
  %87 = add nsw i32 %86, 1
  %88 = icmp ult i32 %83, %87
  br i1 %88, label %89, label %128

89:                                               ; preds = %82
  %90 = load i32, i32* %5, align 4
  %91 = call i32 (...) @prandom_u32()
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %5, align 4
  %94 = sub nsw i32 %92, %93
  %95 = add nsw i32 %94, 1
  %96 = srem i32 %91, %95
  %97 = add nsw i32 %90, %96
  store i32 %97, i32* %14, align 4
  %98 = load %struct.net*, %struct.net** %7, align 8
  %99 = load i32, i32* %13, align 4
  %100 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %101 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 2
  %103 = load i32, i32* %14, align 4
  %104 = call i64 @htonl(i32 %103)
  %105 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %106 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %110 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call %struct.xfrm_state* @xfrm_state_lookup(%struct.net* %98, i32 %99, i32* %102, i64 %104, i32 %108, i32 %112)
  store %struct.xfrm_state* %113, %struct.xfrm_state** %9, align 8
  %114 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %115 = icmp eq %struct.xfrm_state* %114, null
  br i1 %115, label %116, label %122

116:                                              ; preds = %89
  %117 = load i32, i32* %14, align 4
  %118 = call i64 @htonl(i32 %117)
  %119 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %120 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  store i64 %118, i64* %121, align 8
  br label %128

122:                                              ; preds = %89
  %123 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %124 = call i32 @xfrm_state_put(%struct.xfrm_state* %123)
  br label %125

125:                                              ; preds = %122
  %126 = load i32, i32* %8, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %8, align 4
  br label %82

128:                                              ; preds = %116, %82
  br label %129

129:                                              ; preds = %128, %76
  %130 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %131 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %171

135:                                              ; preds = %129
  %136 = load %struct.net*, %struct.net** %7, align 8
  %137 = getelementptr inbounds %struct.net, %struct.net* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = call i32 @spin_lock_bh(i32* %138)
  %140 = load %struct.net*, %struct.net** %7, align 8
  %141 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %142 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 2
  %144 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %145 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %149 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %153 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @xfrm_spi_hash(%struct.net* %140, i32* %143, i64 %147, i32 %151, i32 %155)
  store i32 %156, i32* %8, align 4
  %157 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %158 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %157, i32 0, i32 1
  %159 = load %struct.net*, %struct.net** %7, align 8
  %160 = getelementptr inbounds %struct.net, %struct.net* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load i32, i32* %8, align 4
  %164 = zext i32 %163 to i64
  %165 = add nsw i64 %162, %164
  %166 = call i32 @hlist_add_head_rcu(i32* %158, i64 %165)
  %167 = load %struct.net*, %struct.net** %7, align 8
  %168 = getelementptr inbounds %struct.net, %struct.net* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = call i32 @spin_unlock_bh(i32* %169)
  store i32 0, i32* %10, align 4
  br label %171

171:                                              ; preds = %135, %129
  br label %172

172:                                              ; preds = %171, %73, %48, %41
  %173 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %174 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %173, i32 0, i32 0
  %175 = call i32 @spin_unlock_bh(i32* %174)
  %176 = load i32, i32* %10, align 4
  ret i32 %176
}

declare dso_local %struct.net* @xs_net(%struct.xfrm_state*) #1

declare dso_local i64 @htonl(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.xfrm_state* @xfrm_state_lookup(%struct.net*, i32, i32*, i64, i32, i32) #1

declare dso_local i32 @xfrm_state_put(%struct.xfrm_state*) #1

declare dso_local i32 @prandom_u32(...) #1

declare dso_local i32 @xfrm_spi_hash(%struct.net*, i32*, i64, i32, i32) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
