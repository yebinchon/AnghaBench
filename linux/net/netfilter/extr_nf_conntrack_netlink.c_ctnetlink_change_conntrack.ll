; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_change_conntrack.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_change_conntrack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%struct.nlattr = type { i32 }

@CTA_NAT_SRC = common dso_local global i64 0, align 8
@CTA_NAT_DST = common dso_local global i64 0, align 8
@CTA_TUPLE_MASTER = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@CTA_HELP = common dso_local global i64 0, align 8
@CTA_TIMEOUT = common dso_local global i64 0, align 8
@CTA_STATUS = common dso_local global i64 0, align 8
@CTA_PROTOINFO = common dso_local global i64 0, align 8
@CTA_SEQ_ADJ_ORIG = common dso_local global i64 0, align 8
@CTA_SEQ_ADJ_REPLY = common dso_local global i64 0, align 8
@CTA_SYNPROXY = common dso_local global i64 0, align 8
@CTA_LABELS = common dso_local global i64 0, align 8
@CTA_MARK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conn*, %struct.nlattr**)* @ctnetlink_change_conntrack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_change_conntrack(%struct.nf_conn* %0, %struct.nlattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nf_conn*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %7 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %8 = load i64, i64* @CTA_NAT_SRC, align 8
  %9 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %7, i64 %8
  %10 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %11 = icmp ne %struct.nlattr* %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %2
  %13 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %14 = load i64, i64* @CTA_NAT_DST, align 8
  %15 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %13, i64 %14
  %16 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %17 = icmp ne %struct.nlattr* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %20 = load i64, i64* @CTA_TUPLE_MASTER, align 8
  %21 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %19, i64 %20
  %22 = load %struct.nlattr*, %struct.nlattr** %21, align 8
  %23 = icmp ne %struct.nlattr* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %18, %12, %2
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %139

27:                                               ; preds = %18
  %28 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %29 = load i64, i64* @CTA_HELP, align 8
  %30 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %29
  %31 = load %struct.nlattr*, %struct.nlattr** %30, align 8
  %32 = icmp ne %struct.nlattr* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %35 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %36 = call i32 @ctnetlink_change_helper(%struct.nf_conn* %34, %struct.nlattr** %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %139

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41, %27
  %43 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %44 = load i64, i64* @CTA_TIMEOUT, align 8
  %45 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %43, i64 %44
  %46 = load %struct.nlattr*, %struct.nlattr** %45, align 8
  %47 = icmp ne %struct.nlattr* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %50 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %51 = call i32 @ctnetlink_change_timeout(%struct.nf_conn* %49, %struct.nlattr** %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %139

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %42
  %58 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %59 = load i64, i64* @CTA_STATUS, align 8
  %60 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %58, i64 %59
  %61 = load %struct.nlattr*, %struct.nlattr** %60, align 8
  %62 = icmp ne %struct.nlattr* %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %57
  %64 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %65 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %66 = call i32 @ctnetlink_change_status(%struct.nf_conn* %64, %struct.nlattr** %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %3, align 4
  br label %139

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %71, %57
  %73 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %74 = load i64, i64* @CTA_PROTOINFO, align 8
  %75 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %73, i64 %74
  %76 = load %struct.nlattr*, %struct.nlattr** %75, align 8
  %77 = icmp ne %struct.nlattr* %76, null
  br i1 %77, label %78, label %87

78:                                               ; preds = %72
  %79 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %80 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %81 = call i32 @ctnetlink_change_protoinfo(%struct.nf_conn* %79, %struct.nlattr** %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %3, align 4
  br label %139

86:                                               ; preds = %78
  br label %87

87:                                               ; preds = %86, %72
  %88 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %89 = load i64, i64* @CTA_SEQ_ADJ_ORIG, align 8
  %90 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %88, i64 %89
  %91 = load %struct.nlattr*, %struct.nlattr** %90, align 8
  %92 = icmp ne %struct.nlattr* %91, null
  br i1 %92, label %99, label %93

93:                                               ; preds = %87
  %94 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %95 = load i64, i64* @CTA_SEQ_ADJ_REPLY, align 8
  %96 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %94, i64 %95
  %97 = load %struct.nlattr*, %struct.nlattr** %96, align 8
  %98 = icmp ne %struct.nlattr* %97, null
  br i1 %98, label %99, label %108

99:                                               ; preds = %93, %87
  %100 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %101 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %102 = call i32 @ctnetlink_change_seq_adj(%struct.nf_conn* %100, %struct.nlattr** %101)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %3, align 4
  br label %139

107:                                              ; preds = %99
  br label %108

108:                                              ; preds = %107, %93
  %109 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %110 = load i64, i64* @CTA_SYNPROXY, align 8
  %111 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %109, i64 %110
  %112 = load %struct.nlattr*, %struct.nlattr** %111, align 8
  %113 = icmp ne %struct.nlattr* %112, null
  br i1 %113, label %114, label %123

114:                                              ; preds = %108
  %115 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %116 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %117 = call i32 @ctnetlink_change_synproxy(%struct.nf_conn* %115, %struct.nlattr** %116)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = load i32, i32* %6, align 4
  store i32 %121, i32* %3, align 4
  br label %139

122:                                              ; preds = %114
  br label %123

123:                                              ; preds = %122, %108
  %124 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %125 = load i64, i64* @CTA_LABELS, align 8
  %126 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %124, i64 %125
  %127 = load %struct.nlattr*, %struct.nlattr** %126, align 8
  %128 = icmp ne %struct.nlattr* %127, null
  br i1 %128, label %129, label %138

129:                                              ; preds = %123
  %130 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %131 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %132 = call i32 @ctnetlink_attach_labels(%struct.nf_conn* %130, %struct.nlattr** %131)
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %6, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %129
  %136 = load i32, i32* %6, align 4
  store i32 %136, i32* %3, align 4
  br label %139

137:                                              ; preds = %129
  br label %138

138:                                              ; preds = %137, %123
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %138, %135, %120, %105, %84, %69, %54, %39, %24
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @ctnetlink_change_helper(%struct.nf_conn*, %struct.nlattr**) #1

declare dso_local i32 @ctnetlink_change_timeout(%struct.nf_conn*, %struct.nlattr**) #1

declare dso_local i32 @ctnetlink_change_status(%struct.nf_conn*, %struct.nlattr**) #1

declare dso_local i32 @ctnetlink_change_protoinfo(%struct.nf_conn*, %struct.nlattr**) #1

declare dso_local i32 @ctnetlink_change_seq_adj(%struct.nf_conn*, %struct.nlattr**) #1

declare dso_local i32 @ctnetlink_change_synproxy(%struct.nf_conn*, %struct.nlattr**) #1

declare dso_local i32 @ctnetlink_attach_labels(%struct.nf_conn*, %struct.nlattr**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
