; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_bearer.c_tipc_enable_bearer.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_bearer.c_tipc_enable_bearer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nlattr = type { i32 }
%struct.tipc_net = type { i32* }
%struct.tipc_bearer_names = type { i32 }
%struct.tipc_bearer = type { i8*, i32, i8*, i32, i32, i32, i32, i32, %struct.tipc_media*, i32 }
%struct.tipc_media = type { i8*, i32 (%struct.net.0*, %struct.tipc_bearer.1*, %struct.nlattr.2**)*, i32, i32 }
%struct.net.0 = type opaque
%struct.tipc_bearer.1 = type opaque
%struct.nlattr.2 = type opaque
%struct.sk_buff = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"illegal name\00", align 1
@TIPC_MAX_LINK_PRI = common dso_local global i8* null, align 8
@TIPC_MEDIA_LINK_PRI = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"illegal priority\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"media not registered\00", align 1
@MAX_BEARERS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"already enabled\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"Bearer <%s>: already 2 bearers with priority %u\0A\00", align 1
@TIPC_MIN_LINK_PRI = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [23 x i8] c"cannot adjust to lower\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"Bearer <%s>: trying with adjusted priority\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"max 3 bearers permitted\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"failed to enable media\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"failed to create discoverer\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"Enabled bearer <%s>, priority %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"Enabling of bearer <%s> rejected, %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, i8*, i8*, i8*, %struct.nlattr**)* @tipc_enable_bearer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_enable_bearer(%struct.net* %0, i8* %1, i8* %2, i8* %3, %struct.nlattr** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.nlattr**, align 8
  %12 = alloca %struct.tipc_net*, align 8
  %13 = alloca %struct.tipc_bearer_names, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.tipc_bearer*, align 8
  %16 = alloca %struct.tipc_media*, align 8
  %17 = alloca %struct.sk_buff*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store %struct.net* %0, %struct.net** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.nlattr** %4, %struct.nlattr*** %11, align 8
  %21 = load %struct.net*, %struct.net** %7, align 8
  %22 = call %struct.tipc_net* @tipc_net(%struct.net* %21)
  store %struct.tipc_net* %22, %struct.tipc_net** %12, align 8
  store i32 1, i32* %14, align 4
  store i32 0, i32* %18, align 4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %19, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @bearer_name_validate(i8* %25, %struct.tipc_bearer_names* %13)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %5
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %20, align 8
  br label %215

29:                                               ; preds = %5
  %30 = load i8*, i8** %10, align 8
  %31 = load i8*, i8** @TIPC_MAX_LINK_PRI, align 8
  %32 = icmp ugt i8* %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i8*, i8** %10, align 8
  %35 = load i8*, i8** @TIPC_MEDIA_LINK_PRI, align 8
  %36 = icmp ne i8* %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8** %20, align 8
  br label %215

38:                                               ; preds = %33, %29
  %39 = getelementptr inbounds %struct.tipc_bearer_names, %struct.tipc_bearer_names* %13, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.tipc_media* @tipc_media_find(i32 %40)
  store %struct.tipc_media* %41, %struct.tipc_media** %16, align 8
  %42 = load %struct.tipc_media*, %struct.tipc_media** %16, align 8
  %43 = icmp ne %struct.tipc_media* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8** %20, align 8
  br label %215

45:                                               ; preds = %38
  %46 = load i8*, i8** %10, align 8
  %47 = load i8*, i8** @TIPC_MEDIA_LINK_PRI, align 8
  %48 = icmp eq i8* %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load %struct.tipc_media*, %struct.tipc_media** %16, align 8
  %51 = getelementptr inbounds %struct.tipc_media, %struct.tipc_media* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %10, align 8
  br label %53

53:                                               ; preds = %49, %45
  br label %54

54:                                               ; preds = %100, %91, %86, %53
  %55 = load i32, i32* %18, align 4
  %56 = load i32, i32* @MAX_BEARERS, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %105

58:                                               ; preds = %54
  %59 = load %struct.tipc_net*, %struct.tipc_net** %12, align 8
  %60 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %18, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call %struct.tipc_bearer* @rtnl_dereference(i32 %65)
  store %struct.tipc_bearer* %66, %struct.tipc_bearer** %15, align 8
  %67 = load %struct.tipc_bearer*, %struct.tipc_bearer** %15, align 8
  %68 = icmp ne %struct.tipc_bearer* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %58
  br label %105

70:                                               ; preds = %58
  %71 = load i8*, i8** %8, align 8
  %72 = load %struct.tipc_bearer*, %struct.tipc_bearer** %15, align 8
  %73 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %72, i32 0, i32 9
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @strcmp(i8* %71, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %70
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8** %20, align 8
  br label %215

78:                                               ; preds = %70
  %79 = load i32, i32* %18, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %18, align 4
  %81 = load %struct.tipc_bearer*, %struct.tipc_bearer** %15, align 8
  %82 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = icmp ne i8* %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  br label %54

87:                                               ; preds = %78
  %88 = load i32, i32* %14, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %14, align 4
  %90 = icmp sle i32 %89, 2
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  br label %54

92:                                               ; preds = %87
  %93 = load i8*, i8** %8, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = call i32 (i8*, i8*, ...) @pr_warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i8* %93, i8* %94)
  %96 = load i8*, i8** %10, align 8
  %97 = load i8*, i8** @TIPC_MIN_LINK_PRI, align 8
  %98 = icmp eq i8* %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8** %20, align 8
  br label %215

100:                                              ; preds = %92
  %101 = load i8*, i8** %8, align 8
  %102 = call i32 (i8*, i8*, ...) @pr_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i8* %101)
  %103 = load i8*, i8** %10, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 -1
  store i8* %104, i8** %10, align 8
  store i32 0, i32* %18, align 4
  store i32 1, i32* %14, align 4
  br label %54

105:                                              ; preds = %69, %54
  %106 = load i32, i32* %18, align 4
  %107 = load i32, i32* @MAX_BEARERS, align 4
  %108 = icmp sge i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8** %20, align 8
  br label %215

110:                                              ; preds = %105
  %111 = load i32, i32* @GFP_ATOMIC, align 4
  %112 = call %struct.tipc_bearer* @kzalloc(i32 64, i32 %111)
  store %struct.tipc_bearer* %112, %struct.tipc_bearer** %15, align 8
  %113 = load %struct.tipc_bearer*, %struct.tipc_bearer** %15, align 8
  %114 = icmp ne %struct.tipc_bearer* %113, null
  br i1 %114, label %118, label %115

115:                                              ; preds = %110
  %116 = load i32, i32* @ENOMEM, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %6, align 4
  br label %220

118:                                              ; preds = %110
  %119 = load %struct.tipc_bearer*, %struct.tipc_bearer** %15, align 8
  %120 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %119, i32 0, i32 9
  %121 = load i32, i32* %120, align 8
  %122 = load i8*, i8** %8, align 8
  %123 = call i32 @strcpy(i32 %121, i8* %122)
  %124 = load %struct.tipc_media*, %struct.tipc_media** %16, align 8
  %125 = load %struct.tipc_bearer*, %struct.tipc_bearer** %15, align 8
  %126 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %125, i32 0, i32 8
  store %struct.tipc_media* %124, %struct.tipc_media** %126, align 8
  %127 = load %struct.tipc_media*, %struct.tipc_media** %16, align 8
  %128 = getelementptr inbounds %struct.tipc_media, %struct.tipc_media* %127, i32 0, i32 1
  %129 = load i32 (%struct.net.0*, %struct.tipc_bearer.1*, %struct.nlattr.2**)*, i32 (%struct.net.0*, %struct.tipc_bearer.1*, %struct.nlattr.2**)** %128, align 8
  %130 = load %struct.net*, %struct.net** %7, align 8
  %131 = bitcast %struct.net* %130 to %struct.net.0*
  %132 = load %struct.tipc_bearer*, %struct.tipc_bearer** %15, align 8
  %133 = bitcast %struct.tipc_bearer* %132 to %struct.tipc_bearer.1*
  %134 = load %struct.nlattr**, %struct.nlattr*** %11, align 8
  %135 = bitcast %struct.nlattr** %134 to %struct.nlattr.2**
  %136 = call i32 %129(%struct.net.0* %131, %struct.tipc_bearer.1* %133, %struct.nlattr.2** %135)
  store i32 %136, i32* %19, align 4
  %137 = load i32, i32* %19, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %118
  %140 = load %struct.tipc_bearer*, %struct.tipc_bearer** %15, align 8
  %141 = call i32 @kfree(%struct.tipc_bearer* %140)
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i8** %20, align 8
  br label %215

142:                                              ; preds = %118
  %143 = load i32, i32* %18, align 4
  %144 = load %struct.tipc_bearer*, %struct.tipc_bearer** %15, align 8
  %145 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 8
  %146 = load %struct.tipc_media*, %struct.tipc_media** %16, align 8
  %147 = getelementptr inbounds %struct.tipc_media, %struct.tipc_media* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.tipc_bearer*, %struct.tipc_bearer** %15, align 8
  %150 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %149, i32 0, i32 7
  store i32 %148, i32* %150, align 8
  %151 = load %struct.tipc_media*, %struct.tipc_media** %16, align 8
  %152 = getelementptr inbounds %struct.tipc_media, %struct.tipc_media* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.tipc_bearer*, %struct.tipc_bearer** %15, align 8
  %155 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %154, i32 0, i32 6
  store i32 %153, i32* %155, align 4
  %156 = load i8*, i8** %9, align 8
  %157 = load %struct.tipc_bearer*, %struct.tipc_bearer** %15, align 8
  %158 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %157, i32 0, i32 2
  store i8* %156, i8** %158, align 8
  %159 = load i32, i32* %18, align 4
  %160 = add nsw i32 %159, 65
  %161 = load %struct.tipc_bearer*, %struct.tipc_bearer** %15, align 8
  %162 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %161, i32 0, i32 3
  store i32 %160, i32* %162, align 8
  %163 = load i8*, i8** %10, align 8
  %164 = load %struct.tipc_bearer*, %struct.tipc_bearer** %15, align 8
  %165 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %164, i32 0, i32 0
  store i8* %163, i8** %165, align 8
  %166 = load %struct.tipc_bearer*, %struct.tipc_bearer** %15, align 8
  %167 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %166, i32 0, i32 5
  %168 = call i32 @test_and_set_bit_lock(i32 0, i32* %167)
  %169 = load %struct.net*, %struct.net** %7, align 8
  %170 = load %struct.tipc_bearer*, %struct.tipc_bearer** %15, align 8
  %171 = load %struct.tipc_bearer*, %struct.tipc_bearer** %15, align 8
  %172 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %171, i32 0, i32 4
  %173 = call i32 @tipc_disc_create(%struct.net* %169, %struct.tipc_bearer* %170, i32* %172, %struct.sk_buff** %17)
  store i32 %173, i32* %19, align 4
  %174 = load i32, i32* %19, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %142
  %177 = load %struct.net*, %struct.net** %7, align 8
  %178 = load %struct.tipc_bearer*, %struct.tipc_bearer** %15, align 8
  %179 = call i32 @bearer_disable(%struct.net* %177, %struct.tipc_bearer* %178)
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i8** %20, align 8
  br label %215

180:                                              ; preds = %142
  %181 = load %struct.tipc_net*, %struct.tipc_net** %12, align 8
  %182 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %18, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.tipc_bearer*, %struct.tipc_bearer** %15, align 8
  %189 = call i32 @rcu_assign_pointer(i32 %187, %struct.tipc_bearer* %188)
  %190 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %191 = icmp ne %struct.sk_buff* %190, null
  br i1 %191, label %192, label %199

192:                                              ; preds = %180
  %193 = load %struct.net*, %struct.net** %7, align 8
  %194 = load i32, i32* %18, align 4
  %195 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %196 = load %struct.tipc_bearer*, %struct.tipc_bearer** %15, align 8
  %197 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %196, i32 0, i32 4
  %198 = call i32 @tipc_bearer_xmit_skb(%struct.net* %193, i32 %194, %struct.sk_buff* %195, i32* %197)
  br label %199

199:                                              ; preds = %192, %180
  %200 = load %struct.net*, %struct.net** %7, align 8
  %201 = load i32, i32* %18, align 4
  %202 = call i64 @tipc_mon_create(%struct.net* %200, i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %199
  %205 = load %struct.net*, %struct.net** %7, align 8
  %206 = load %struct.tipc_bearer*, %struct.tipc_bearer** %15, align 8
  %207 = call i32 @bearer_disable(%struct.net* %205, %struct.tipc_bearer* %206)
  %208 = load i32, i32* @ENOMEM, align 4
  %209 = sub nsw i32 0, %208
  store i32 %209, i32* %6, align 4
  br label %220

210:                                              ; preds = %199
  %211 = load i8*, i8** %8, align 8
  %212 = load i8*, i8** %10, align 8
  %213 = call i32 @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i8* %211, i8* %212)
  %214 = load i32, i32* %19, align 4
  store i32 %214, i32* %6, align 4
  br label %220

215:                                              ; preds = %176, %139, %109, %99, %77, %44, %37, %28
  %216 = load i8*, i8** %8, align 8
  %217 = load i8*, i8** %20, align 8
  %218 = call i32 (i8*, i8*, ...) @pr_warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i8* %216, i8* %217)
  %219 = load i32, i32* %19, align 4
  store i32 %219, i32* %6, align 4
  br label %220

220:                                              ; preds = %215, %210, %204, %115
  %221 = load i32, i32* %6, align 4
  ret i32 %221
}

declare dso_local %struct.tipc_net* @tipc_net(%struct.net*) #1

declare dso_local i32 @bearer_name_validate(i8*, %struct.tipc_bearer_names*) #1

declare dso_local %struct.tipc_media* @tipc_media_find(i32) #1

declare dso_local %struct.tipc_bearer* @rtnl_dereference(i32) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @pr_warn(i8*, i8*, ...) #1

declare dso_local %struct.tipc_bearer* @kzalloc(i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @kfree(%struct.tipc_bearer*) #1

declare dso_local i32 @test_and_set_bit_lock(i32, i32*) #1

declare dso_local i32 @tipc_disc_create(%struct.net*, %struct.tipc_bearer*, i32*, %struct.sk_buff**) #1

declare dso_local i32 @bearer_disable(%struct.net*, %struct.tipc_bearer*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.tipc_bearer*) #1

declare dso_local i32 @tipc_bearer_xmit_skb(%struct.net*, i32, %struct.sk_buff*, i32*) #1

declare dso_local i64 @tipc_mon_create(%struct.net*, i32) #1

declare dso_local i32 @pr_info(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
