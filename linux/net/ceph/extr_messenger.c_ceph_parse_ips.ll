; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_parse_ips.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_parse_ips.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_entity_addr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"parse_ips on '%.*s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"missing matching ']'\0A\00", align 1
@CEPH_MON_PORT = common dso_local global i32 0, align 4
@CEPH_ENTITY_ADDR_TYPE_LEGACY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"parse_ips got %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"parse_ips bad ip '%.*s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_parse_ips(i8* %0, i8* %1, %struct.ceph_entity_addr* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ceph_entity_addr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.ceph_entity_addr* %2, %struct.ceph_entity_addr** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %13, align 4
  %20 = load i8*, i8** %7, align 8
  store i8* %20, i8** %14, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = ptrtoint i8* %21 to i64
  %24 = ptrtoint i8* %22 to i64
  %25 = sub i64 %23, %24
  %26 = trunc i64 %25 to i32
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %26, i8* %27)
  store i32 0, i32* %12, align 4
  br label %29

29:                                               ; preds = %158, %5
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %161

33:                                               ; preds = %29
  store i8 44, i8* %17, align 1
  %34 = load i8*, i8** %14, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 91
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  store i8 93, i8* %17, align 1
  %39 = load i8*, i8** %14, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %14, align 8
  br label %41

41:                                               ; preds = %38, %33
  %42 = load i8*, i8** %14, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load i8*, i8** %14, align 8
  %45 = ptrtoint i8* %43 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = trunc i64 %47 to i32
  %49 = load %struct.ceph_entity_addr*, %struct.ceph_entity_addr** %9, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.ceph_entity_addr, %struct.ceph_entity_addr* %49, i64 %51
  %53 = load i8, i8* %17, align 1
  %54 = call i32 @ceph_parse_server_name(i8* %42, i32 %48, %struct.ceph_entity_addr* %52, i8 signext %53, i8** %15)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %41
  br label %174

58:                                               ; preds = %41
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %13, align 4
  %61 = load i8*, i8** %15, align 8
  store i8* %61, i8** %14, align 8
  %62 = load i8, i8* %17, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 93
  br i1 %64, label %65, label %75

65:                                               ; preds = %58
  %66 = load i8*, i8** %14, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 93
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %174

72:                                               ; preds = %65
  %73 = load i8*, i8** %14, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %14, align 8
  br label %75

75:                                               ; preds = %72, %58
  %76 = load i8*, i8** %14, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = icmp ult i8* %76, %77
  br i1 %78, label %79, label %124

79:                                               ; preds = %75
  %80 = load i8*, i8** %14, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 58
  br i1 %83, label %84, label %124

84:                                               ; preds = %79
  store i32 0, i32* %16, align 4
  %85 = load i8*, i8** %14, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %14, align 8
  br label %87

87:                                               ; preds = %103, %84
  %88 = load i8*, i8** %14, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = icmp ult i8* %88, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %87
  %92 = load i8*, i8** %14, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp sge i32 %94, 48
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load i8*, i8** %14, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp sle i32 %99, 57
  br label %101

101:                                              ; preds = %96, %91, %87
  %102 = phi i1 [ false, %91 ], [ false, %87 ], [ %100, %96 ]
  br i1 %102, label %103, label %113

103:                                              ; preds = %101
  %104 = load i32, i32* %16, align 4
  %105 = mul nsw i32 %104, 10
  %106 = load i8*, i8** %14, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = sub nsw i32 %108, 48
  %110 = add nsw i32 %105, %109
  store i32 %110, i32* %16, align 4
  %111 = load i8*, i8** %14, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %14, align 8
  br label %87

113:                                              ; preds = %101
  %114 = load i32, i32* %16, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = load i32, i32* @CEPH_MON_PORT, align 4
  store i32 %117, i32* %16, align 4
  br label %123

118:                                              ; preds = %113
  %119 = load i32, i32* %16, align 4
  %120 = icmp sgt i32 %119, 65535
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  br label %174

122:                                              ; preds = %118
  br label %123

123:                                              ; preds = %122, %116
  br label %126

124:                                              ; preds = %79, %75
  %125 = load i32, i32* @CEPH_MON_PORT, align 4
  store i32 %125, i32* %16, align 4
  br label %126

126:                                              ; preds = %124, %123
  %127 = load %struct.ceph_entity_addr*, %struct.ceph_entity_addr** %9, align 8
  %128 = load i32, i32* %12, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.ceph_entity_addr, %struct.ceph_entity_addr* %127, i64 %129
  %131 = load i32, i32* %16, align 4
  %132 = call i32 @addr_set_port(%struct.ceph_entity_addr* %130, i32 %131)
  %133 = load i32, i32* @CEPH_ENTITY_ADDR_TYPE_LEGACY, align 4
  %134 = load %struct.ceph_entity_addr*, %struct.ceph_entity_addr** %9, align 8
  %135 = load i32, i32* %12, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.ceph_entity_addr, %struct.ceph_entity_addr* %134, i64 %136
  %138 = getelementptr inbounds %struct.ceph_entity_addr, %struct.ceph_entity_addr* %137, i32 0, i32 0
  store i32 %133, i32* %138, align 4
  %139 = load %struct.ceph_entity_addr*, %struct.ceph_entity_addr** %9, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.ceph_entity_addr, %struct.ceph_entity_addr* %139, i64 %141
  %143 = call i32 @ceph_pr_addr(%struct.ceph_entity_addr* %142)
  %144 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %143)
  %145 = load i8*, i8** %14, align 8
  %146 = load i8*, i8** %8, align 8
  %147 = icmp eq i8* %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %126
  br label %161

149:                                              ; preds = %126
  %150 = load i8*, i8** %14, align 8
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp ne i32 %152, 44
  br i1 %153, label %154, label %155

154:                                              ; preds = %149
  br label %174

155:                                              ; preds = %149
  %156 = load i8*, i8** %14, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %14, align 8
  br label %158

158:                                              ; preds = %155
  %159 = load i32, i32* %12, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %12, align 4
  br label %29

161:                                              ; preds = %148, %29
  %162 = load i8*, i8** %14, align 8
  %163 = load i8*, i8** %8, align 8
  %164 = icmp ne i8* %162, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %161
  br label %174

166:                                              ; preds = %161
  %167 = load i32*, i32** %11, align 8
  %168 = icmp ne i32* %167, null
  br i1 %168, label %169, label %173

169:                                              ; preds = %166
  %170 = load i32, i32* %12, align 4
  %171 = add nsw i32 %170, 1
  %172 = load i32*, i32** %11, align 8
  store i32 %171, i32* %172, align 4
  br label %173

173:                                              ; preds = %169, %166
  store i32 0, i32* %6, align 4
  br label %184

174:                                              ; preds = %165, %154, %121, %70, %57
  %175 = load i8*, i8** %8, align 8
  %176 = load i8*, i8** %7, align 8
  %177 = ptrtoint i8* %175 to i64
  %178 = ptrtoint i8* %176 to i64
  %179 = sub i64 %177, %178
  %180 = trunc i64 %179 to i32
  %181 = load i8*, i8** %7, align 8
  %182 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %180, i8* %181)
  %183 = load i32, i32* %13, align 4
  store i32 %183, i32* %6, align 4
  br label %184

184:                                              ; preds = %174, %173
  %185 = load i32, i32* %6, align 4
  ret i32 %185
}

declare dso_local i32 @dout(i8*, ...) #1

declare dso_local i32 @ceph_parse_server_name(i8*, i32, %struct.ceph_entity_addr*, i8 signext, i8**) #1

declare dso_local i32 @addr_set_port(%struct.ceph_entity_addr*, i32) #1

declare dso_local i32 @ceph_pr_addr(%struct.ceph_entity_addr*) #1

declare dso_local i32 @pr_err(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
