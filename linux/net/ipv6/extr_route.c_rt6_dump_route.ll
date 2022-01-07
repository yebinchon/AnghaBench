; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_dump_route.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_dump_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_info = type { i32, i64, i64, i32, i64 }
%struct.rt6_rtnl_dump_arg = type { %struct.TYPE_7__*, i32, %struct.net*, %struct.fib_dump_filter }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.net = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.fib6_info* }
%struct.fib_dump_filter = type { i32, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.fib6_nh_exception_dump_walker = type { i32, i32, i32, %struct.fib6_info*, %struct.rt6_rtnl_dump_arg* }

@NLM_F_MULTI = common dso_local global i32 0, align 4
@RTM_F_PREFIX = common dso_local global i32 0, align 4
@RTF_PREFIX_RT = common dso_local global i32 0, align 4
@NLM_F_DUMP_FILTERED = common dso_local global i32 0, align 4
@RTM_NEWROUTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt6_dump_route(%struct.fib6_info* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fib6_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rt6_rtnl_dump_arg*, align 8
  %9 = alloca %struct.fib_dump_filter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.net*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__, align 4
  %14 = alloca %struct.fib6_nh_exception_dump_walker, align 8
  %15 = alloca i32, align 4
  store %struct.fib6_info* %0, %struct.fib6_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.rt6_rtnl_dump_arg*
  store %struct.rt6_rtnl_dump_arg* %17, %struct.rt6_rtnl_dump_arg** %8, align 8
  %18 = load %struct.rt6_rtnl_dump_arg*, %struct.rt6_rtnl_dump_arg** %8, align 8
  %19 = getelementptr inbounds %struct.rt6_rtnl_dump_arg, %struct.rt6_rtnl_dump_arg* %18, i32 0, i32 3
  store %struct.fib_dump_filter* %19, %struct.fib_dump_filter** %9, align 8
  %20 = load i32, i32* @NLM_F_MULTI, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.rt6_rtnl_dump_arg*, %struct.rt6_rtnl_dump_arg** %8, align 8
  %22 = getelementptr inbounds %struct.rt6_rtnl_dump_arg, %struct.rt6_rtnl_dump_arg* %21, i32 0, i32 2
  %23 = load %struct.net*, %struct.net** %22, align 8
  store %struct.net* %23, %struct.net** %11, align 8
  store i32 0, i32* %12, align 4
  %24 = load %struct.fib6_info*, %struct.fib6_info** %5, align 8
  %25 = load %struct.net*, %struct.net** %11, align 8
  %26 = getelementptr inbounds %struct.net, %struct.net* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.fib6_info*, %struct.fib6_info** %27, align 8
  %29 = icmp eq %struct.fib6_info* %24, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %192

31:                                               ; preds = %3
  %32 = load %struct.fib_dump_filter*, %struct.fib_dump_filter** %9, align 8
  %33 = getelementptr inbounds %struct.fib_dump_filter, %struct.fib_dump_filter* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @RTM_F_PREFIX, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = load %struct.fib6_info*, %struct.fib6_info** %5, align 8
  %40 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @RTF_PREFIX_RT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  store i32 -1, i32* %4, align 4
  br label %192

46:                                               ; preds = %38, %31
  %47 = load %struct.fib_dump_filter*, %struct.fib_dump_filter** %9, align 8
  %48 = getelementptr inbounds %struct.fib_dump_filter, %struct.fib_dump_filter* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %90

51:                                               ; preds = %46
  %52 = load %struct.fib_dump_filter*, %struct.fib_dump_filter** %9, align 8
  %53 = getelementptr inbounds %struct.fib_dump_filter, %struct.fib_dump_filter* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = load %struct.fib6_info*, %struct.fib6_info** %5, align 8
  %58 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.fib_dump_filter*, %struct.fib_dump_filter** %9, align 8
  %61 = getelementptr inbounds %struct.fib_dump_filter, %struct.fib_dump_filter* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %59, %62
  br i1 %63, label %89, label %64

64:                                               ; preds = %56, %51
  %65 = load %struct.fib_dump_filter*, %struct.fib_dump_filter** %9, align 8
  %66 = getelementptr inbounds %struct.fib_dump_filter, %struct.fib_dump_filter* %65, i32 0, i32 6
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load %struct.fib6_info*, %struct.fib6_info** %5, align 8
  %71 = load %struct.fib_dump_filter*, %struct.fib_dump_filter** %9, align 8
  %72 = getelementptr inbounds %struct.fib_dump_filter, %struct.fib_dump_filter* %71, i32 0, i32 6
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @fib6_info_uses_dev(%struct.fib6_info* %70, i64 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %69, %64
  %77 = load %struct.fib_dump_filter*, %struct.fib_dump_filter** %9, align 8
  %78 = getelementptr inbounds %struct.fib_dump_filter, %struct.fib_dump_filter* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  %82 = load %struct.fib6_info*, %struct.fib6_info** %5, align 8
  %83 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.fib_dump_filter*, %struct.fib_dump_filter** %9, align 8
  %86 = getelementptr inbounds %struct.fib_dump_filter, %struct.fib_dump_filter* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %84, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %81, %69, %56
  store i32 -1, i32* %4, align 4
  br label %192

90:                                               ; preds = %81, %76, %46
  %91 = load %struct.fib_dump_filter*, %struct.fib_dump_filter** %9, align 8
  %92 = getelementptr inbounds %struct.fib_dump_filter, %struct.fib_dump_filter* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %105, label %95

95:                                               ; preds = %90
  %96 = load %struct.fib_dump_filter*, %struct.fib_dump_filter** %9, align 8
  %97 = getelementptr inbounds %struct.fib_dump_filter, %struct.fib_dump_filter* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load %struct.fib_dump_filter*, %struct.fib_dump_filter** %9, align 8
  %102 = getelementptr inbounds %struct.fib_dump_filter, %struct.fib_dump_filter* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %100, %95, %90
  %106 = load i32, i32* @NLM_F_DUMP_FILTERED, align 4
  %107 = load i32, i32* %10, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %10, align 4
  br label %109

109:                                              ; preds = %105, %100
  %110 = load %struct.fib_dump_filter*, %struct.fib_dump_filter** %9, align 8
  %111 = getelementptr inbounds %struct.fib_dump_filter, %struct.fib_dump_filter* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %151

114:                                              ; preds = %109
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i32, i32* %7, align 4
  %119 = add i32 %118, -1
  store i32 %119, i32* %7, align 4
  br label %150

120:                                              ; preds = %114
  %121 = load %struct.net*, %struct.net** %11, align 8
  %122 = load %struct.rt6_rtnl_dump_arg*, %struct.rt6_rtnl_dump_arg** %8, align 8
  %123 = getelementptr inbounds %struct.rt6_rtnl_dump_arg, %struct.rt6_rtnl_dump_arg* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.fib6_info*, %struct.fib6_info** %5, align 8
  %126 = load i32, i32* @RTM_NEWROUTE, align 4
  %127 = load %struct.rt6_rtnl_dump_arg*, %struct.rt6_rtnl_dump_arg** %8, align 8
  %128 = getelementptr inbounds %struct.rt6_rtnl_dump_arg, %struct.rt6_rtnl_dump_arg* %127, i32 0, i32 0
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @NETLINK_CB(i32 %131)
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store i32 %132, i32* %133, align 4
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.rt6_rtnl_dump_arg*, %struct.rt6_rtnl_dump_arg** %8, align 8
  %137 = getelementptr inbounds %struct.rt6_rtnl_dump_arg, %struct.rt6_rtnl_dump_arg* %136, i32 0, i32 0
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %10, align 4
  %144 = call i64 @rt6_fill_node(%struct.net* %121, i32 %124, %struct.fib6_info* %125, i32* null, i32* null, i32* null, i32 0, i32 %126, i32 %135, i32 %142, i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %120
  store i32 0, i32* %4, align 4
  br label %192

147:                                              ; preds = %120
  %148 = load i32, i32* %12, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %12, align 4
  br label %150

150:                                              ; preds = %147, %117
  br label %151

151:                                              ; preds = %150, %109
  %152 = load %struct.fib_dump_filter*, %struct.fib_dump_filter** %9, align 8
  %153 = getelementptr inbounds %struct.fib_dump_filter, %struct.fib_dump_filter* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %191

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.fib6_nh_exception_dump_walker, %struct.fib6_nh_exception_dump_walker* %14, i32 0, i32 0
  %158 = load i32, i32* %10, align 4
  store i32 %158, i32* %157, align 8
  %159 = getelementptr inbounds %struct.fib6_nh_exception_dump_walker, %struct.fib6_nh_exception_dump_walker* %14, i32 0, i32 1
  %160 = load i32, i32* %7, align 4
  store i32 %160, i32* %159, align 4
  %161 = getelementptr inbounds %struct.fib6_nh_exception_dump_walker, %struct.fib6_nh_exception_dump_walker* %14, i32 0, i32 2
  store i32 0, i32* %161, align 8
  %162 = getelementptr inbounds %struct.fib6_nh_exception_dump_walker, %struct.fib6_nh_exception_dump_walker* %14, i32 0, i32 3
  %163 = load %struct.fib6_info*, %struct.fib6_info** %5, align 8
  store %struct.fib6_info* %163, %struct.fib6_info** %162, align 8
  %164 = getelementptr inbounds %struct.fib6_nh_exception_dump_walker, %struct.fib6_nh_exception_dump_walker* %14, i32 0, i32 4
  %165 = load %struct.rt6_rtnl_dump_arg*, %struct.rt6_rtnl_dump_arg** %8, align 8
  store %struct.rt6_rtnl_dump_arg* %165, %struct.rt6_rtnl_dump_arg** %164, align 8
  %166 = call i32 (...) @rcu_read_lock()
  %167 = load %struct.fib6_info*, %struct.fib6_info** %5, align 8
  %168 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %167, i32 0, i32 4
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %156
  %172 = load %struct.fib6_info*, %struct.fib6_info** %5, align 8
  %173 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %172, i32 0, i32 4
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @nexthop_for_each_fib6_nh(i64 %174, i32 (i32, %struct.fib6_nh_exception_dump_walker*)* @rt6_nh_dump_exceptions, %struct.fib6_nh_exception_dump_walker* %14)
  store i32 %175, i32* %15, align 4
  br label %181

176:                                              ; preds = %156
  %177 = load %struct.fib6_info*, %struct.fib6_info** %5, align 8
  %178 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @rt6_nh_dump_exceptions(i32 %179, %struct.fib6_nh_exception_dump_walker* %14)
  store i32 %180, i32* %15, align 4
  br label %181

181:                                              ; preds = %176, %171
  %182 = call i32 (...) @rcu_read_unlock()
  %183 = load i32, i32* %15, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %181
  %186 = getelementptr inbounds %struct.fib6_nh_exception_dump_walker, %struct.fib6_nh_exception_dump_walker* %14, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* %12, align 4
  %189 = add nsw i32 %188, %187
  store i32 %189, i32* %12, align 4
  store i32 %189, i32* %4, align 4
  br label %192

190:                                              ; preds = %181
  br label %191

191:                                              ; preds = %190, %151
  store i32 -1, i32* %4, align 4
  br label %192

192:                                              ; preds = %191, %185, %146, %89, %45, %30
  %193 = load i32, i32* %4, align 4
  ret i32 %193
}

declare dso_local i32 @fib6_info_uses_dev(%struct.fib6_info*, i64) #1

declare dso_local i64 @rt6_fill_node(%struct.net*, i32, %struct.fib6_info*, i32*, i32*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @nexthop_for_each_fib6_nh(i64, i32 (i32, %struct.fib6_nh_exception_dump_walker*)*, %struct.fib6_nh_exception_dump_walker*) #1

declare dso_local i32 @rt6_nh_dump_exceptions(i32, %struct.fib6_nh_exception_dump_walker*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
