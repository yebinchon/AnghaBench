; ModuleID = '/home/carl/AnghaBench/linux/net/can/extr_proc.c_can_stat_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/extr_proc.c_can_stat_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.net = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.can_pkg_stats* }
%struct.can_pkg_stats = type { i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i64, i64, i32, i8*, i8* }
%struct.timer_list = type { i32 }

@can = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@jiffies = common dso_local global i32 0, align 4
@user_reset = common dso_local global i64 0, align 8
@ULONG_MAX = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@net = common dso_local global %struct.net* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @can_stat_update(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.can_pkg_stats*, align 8
  %5 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.net*, %struct.net** %3, align 8
  %7 = ptrtoint %struct.net* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @can, i32 0, i32 0), align 4
  %10 = call %struct.net* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.net* %10, %struct.net** %3, align 8
  %11 = load %struct.net*, %struct.net** %3, align 8
  %12 = getelementptr inbounds %struct.net, %struct.net* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %13, align 8
  store %struct.can_pkg_stats* %14, %struct.can_pkg_stats** %4, align 8
  %15 = load i32, i32* @jiffies, align 4
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* @user_reset, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.net*, %struct.net** %3, align 8
  %21 = call i32 @can_init_stats(%struct.net* %20)
  br label %22

22:                                               ; preds = %19, %1
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %4, align 8
  %25 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.net*, %struct.net** %3, align 8
  %30 = call i32 @can_init_stats(%struct.net* %29)
  br label %31

31:                                               ; preds = %28, %22
  %32 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %4, align 8
  %33 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @ULONG_MAX, align 4
  %36 = load i32, i32* @HZ, align 4
  %37 = sdiv i32 %35, %36
  %38 = icmp sgt i32 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load %struct.net*, %struct.net** %3, align 8
  %41 = call i32 @can_init_stats(%struct.net* %40)
  br label %42

42:                                               ; preds = %39, %31
  %43 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %4, align 8
  %44 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ULONG_MAX, align 4
  %47 = load i32, i32* @HZ, align 4
  %48 = sdiv i32 %46, %47
  %49 = icmp sgt i32 %45, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load %struct.net*, %struct.net** %3, align 8
  %52 = call i32 @can_init_stats(%struct.net* %51)
  br label %53

53:                                               ; preds = %50, %42
  %54 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %4, align 8
  %55 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @ULONG_MAX, align 4
  %58 = sdiv i32 %57, 100
  %59 = icmp sgt i32 %56, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load %struct.net*, %struct.net** %3, align 8
  %62 = call i32 @can_init_stats(%struct.net* %61)
  br label %63

63:                                               ; preds = %60, %53
  %64 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %4, align 8
  %65 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %63
  %69 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %4, align 8
  %70 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = mul nsw i32 %71, 100
  %73 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %4, align 8
  %74 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = sdiv i32 %72, %75
  %77 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %4, align 8
  %78 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %68, %63
  %80 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %4, align 8
  %81 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %5, align 8
  %84 = trunc i64 %83 to i32
  %85 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %4, align 8
  %86 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @calc_rate(i64 %82, i32 %84, i32 %87)
  %89 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %4, align 8
  %90 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %89, i32 0, i32 15
  store i8* %88, i8** %90, align 8
  %91 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %4, align 8
  %92 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %5, align 8
  %95 = trunc i64 %94 to i32
  %96 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %4, align 8
  %97 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i8* @calc_rate(i64 %93, i32 %95, i32 %98)
  %100 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %4, align 8
  %101 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %100, i32 0, i32 14
  store i8* %99, i8** %101, align 8
  %102 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %4, align 8
  %103 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %79
  %107 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %4, align 8
  %108 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %107, i32 0, i32 7
  %109 = load i32, i32* %108, align 8
  %110 = mul nsw i32 %109, 100
  %111 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %4, align 8
  %112 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = sdiv i32 %110, %113
  %115 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %4, align 8
  %116 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %115, i32 0, i32 6
  store i32 %114, i32* %116, align 4
  br label %117

117:                                              ; preds = %106, %79
  %118 = load i32, i32* @HZ, align 4
  %119 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %4, align 8
  %120 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %119, i32 0, i32 9
  %121 = load i32, i32* %120, align 8
  %122 = call i8* @calc_rate(i64 0, i32 %118, i32 %121)
  %123 = ptrtoint i8* %122 to i64
  %124 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %4, align 8
  %125 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %124, i32 0, i32 8
  store i64 %123, i64* %125, align 8
  %126 = load i32, i32* @HZ, align 4
  %127 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %4, align 8
  %128 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 8
  %130 = call i8* @calc_rate(i64 0, i32 %126, i32 %129)
  %131 = ptrtoint i8* %130 to i64
  %132 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %4, align 8
  %133 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %132, i32 0, i32 10
  store i64 %131, i64* %133, align 8
  %134 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %4, align 8
  %135 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %134, i32 0, i32 11
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %4, align 8
  %138 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %137, i32 0, i32 8
  %139 = load i64, i64* %138, align 8
  %140 = icmp slt i64 %136, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %117
  %142 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %4, align 8
  %143 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %142, i32 0, i32 8
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %4, align 8
  %146 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %145, i32 0, i32 11
  store i64 %144, i64* %146, align 8
  br label %147

147:                                              ; preds = %141, %117
  %148 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %4, align 8
  %149 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %148, i32 0, i32 12
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %4, align 8
  %152 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %151, i32 0, i32 10
  %153 = load i64, i64* %152, align 8
  %154 = icmp slt i64 %150, %153
  br i1 %154, label %155, label %161

155:                                              ; preds = %147
  %156 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %4, align 8
  %157 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %156, i32 0, i32 10
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %4, align 8
  %160 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %159, i32 0, i32 12
  store i64 %158, i64* %160, align 8
  br label %161

161:                                              ; preds = %155, %147
  %162 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %4, align 8
  %163 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %162, i32 0, i32 13
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %4, align 8
  %166 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %165, i32 0, i32 6
  %167 = load i32, i32* %166, align 4
  %168 = icmp slt i32 %164, %167
  br i1 %168, label %169, label %175

169:                                              ; preds = %161
  %170 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %4, align 8
  %171 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %170, i32 0, i32 6
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %4, align 8
  %174 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %173, i32 0, i32 13
  store i32 %172, i32* %174, align 8
  br label %175

175:                                              ; preds = %169, %161
  %176 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %4, align 8
  %177 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %176, i32 0, i32 9
  store i32 0, i32* %177, align 8
  %178 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %4, align 8
  %179 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %178, i32 0, i32 5
  store i32 0, i32* %179, align 8
  %180 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %4, align 8
  %181 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %180, i32 0, i32 7
  store i32 0, i32* %181, align 8
  %182 = load %struct.net*, %struct.net** %3, align 8
  %183 = getelementptr inbounds %struct.net, %struct.net* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 0
  %185 = load i32, i32* @jiffies, align 4
  %186 = load i32, i32* @HZ, align 4
  %187 = add nsw i32 %185, %186
  %188 = call i32 @round_jiffies(i32 %187)
  %189 = call i32 @mod_timer(i32* %184, i32 %188)
  ret void
}

declare dso_local %struct.net* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @can_init_stats(%struct.net*) #1

declare dso_local i8* @calc_rate(i64, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @round_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
