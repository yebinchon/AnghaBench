; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_diag.c_inet_diag_bc_audit.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_diag.c_inet_diag_bc_audit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.sk_buff = type { i32 }
%struct.inet_diag_bc_op = type { i32, i32, i32 }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, %struct.sk_buff*)* @inet_diag_bc_audit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_diag_bc_audit(%struct.nlattr* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlattr*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.inet_diag_bc_op*, align 8
  store %struct.nlattr* %0, %struct.nlattr** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = load i32, i32* @CAP_NET_ADMIN, align 4
  %15 = call i32 @netlink_net_capable(%struct.sk_buff* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %17 = icmp ne %struct.nlattr* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %20 = call i32 @nla_len(%struct.nlattr* %19)
  %21 = sext i32 %20 to i64
  %22 = icmp ult i64 %21, 12
  br i1 %22, label %23, label %26

23:                                               ; preds = %18, %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %176

26:                                               ; preds = %18
  %27 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %28 = call i8* @nla_data(%struct.nlattr* %27)
  store i8* %28, i8** %8, align 8
  store i8* %28, i8** %7, align 8
  %29 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %30 = call i32 @nla_len(%struct.nlattr* %29)
  store i32 %30, i32* %9, align 4
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %155, %26
  %32 = load i32, i32* %10, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %167

34:                                               ; preds = %31
  store i32 12, i32* %11, align 4
  %35 = load i8*, i8** %8, align 8
  %36 = bitcast i8* %35 to %struct.inet_diag_bc_op*
  store %struct.inet_diag_bc_op* %36, %struct.inet_diag_bc_op** %12, align 8
  %37 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %12, align 8
  %38 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %83 [
    i32 131, label %40
    i32 138, label %40
    i32 139, label %49
    i32 130, label %58
    i32 129, label %58
    i32 128, label %58
    i32 137, label %58
    i32 136, label %58
    i32 135, label %58
    i32 133, label %67
    i32 140, label %82
    i32 134, label %82
    i32 132, label %82
  ]

40:                                               ; preds = %34, %34
  %41 = load i8*, i8** %8, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @valid_hostcond(i8* %41, i32 %42, i32* %11)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %176

48:                                               ; preds = %40
  br label %86

49:                                               ; preds = %34
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @valid_devcond(i8* %50, i32 %51, i32* %11)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %176

57:                                               ; preds = %49
  br label %86

58:                                               ; preds = %34, %34, %34, %34, %34, %34
  %59 = load i8*, i8** %8, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @valid_port_comparison(i8* %59, i32 %60, i32* %11)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %176

66:                                               ; preds = %58
  br label %86

67:                                               ; preds = %34
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* @EPERM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %176

73:                                               ; preds = %67
  %74 = load i8*, i8** %8, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @valid_markcond(i8* %74, i32 %75, i32* %11)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %176

81:                                               ; preds = %73
  br label %86

82:                                               ; preds = %34, %34, %34
  br label %86

83:                                               ; preds = %34
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %176

86:                                               ; preds = %82, %81, %66, %57, %48
  %87 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %12, align 8
  %88 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 132
  br i1 %90, label %91, label %133

91:                                               ; preds = %86
  %92 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %12, align 8
  %93 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %110, label %97

97:                                               ; preds = %91
  %98 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %12, align 8
  %99 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, 4
  %103 = icmp sgt i32 %100, %102
  br i1 %103, label %110, label %104

104:                                              ; preds = %97
  %105 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %12, align 8
  %106 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, 3
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %104, %97, %91
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %176

113:                                              ; preds = %104
  %114 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %12, align 8
  %115 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %10, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %132

119:                                              ; preds = %113
  %120 = load i8*, i8** %7, align 8
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %10, align 4
  %123 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %12, align 8
  %124 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = sub nsw i32 %122, %125
  %127 = call i32 @valid_cc(i8* %120, i32 %121, i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %119
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %3, align 4
  br label %176

132:                                              ; preds = %119, %113
  br label %133

133:                                              ; preds = %132, %86
  %134 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %12, align 8
  %135 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %11, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %152, label %139

139:                                              ; preds = %133
  %140 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %12, align 8
  %141 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %10, align 4
  %144 = add nsw i32 %143, 4
  %145 = icmp sgt i32 %142, %144
  br i1 %145, label %152, label %146

146:                                              ; preds = %139
  %147 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %12, align 8
  %148 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = and i32 %149, 3
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %146, %139, %133
  %153 = load i32, i32* @EINVAL, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %3, align 4
  br label %176

155:                                              ; preds = %146
  %156 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %12, align 8
  %157 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load i8*, i8** %8, align 8
  %160 = sext i32 %158 to i64
  %161 = getelementptr i8, i8* %159, i64 %160
  store i8* %161, i8** %8, align 8
  %162 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %12, align 8
  %163 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %10, align 4
  %166 = sub nsw i32 %165, %164
  store i32 %166, i32* %10, align 4
  br label %31

167:                                              ; preds = %31
  %168 = load i32, i32* %10, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %167
  br label %174

171:                                              ; preds = %167
  %172 = load i32, i32* @EINVAL, align 4
  %173 = sub nsw i32 0, %172
  br label %174

174:                                              ; preds = %171, %170
  %175 = phi i32 [ 0, %170 ], [ %173, %171 ]
  store i32 %175, i32* %3, align 4
  br label %176

176:                                              ; preds = %174, %152, %129, %110, %83, %78, %70, %63, %54, %45, %23
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

declare dso_local i32 @netlink_net_capable(%struct.sk_buff*, i32) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i8* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @valid_hostcond(i8*, i32, i32*) #1

declare dso_local i32 @valid_devcond(i8*, i32, i32*) #1

declare dso_local i32 @valid_port_comparison(i8*, i32, i32*) #1

declare dso_local i32 @valid_markcond(i8*, i32, i32*) #1

declare dso_local i32 @valid_cc(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
