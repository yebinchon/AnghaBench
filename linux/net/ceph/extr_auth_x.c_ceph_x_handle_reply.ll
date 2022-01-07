; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_auth_x.c_ceph_x_handle_reply.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_auth_x.c_ceph_x_handle_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_auth_client = type { i32, %struct.ceph_x_info* }
%struct.ceph_x_info = type { i32, i32, i32, i32 }
%struct.ceph_x_reply_header = type { i32, i32 }
%struct.ceph_x_ticket_handler = type { i32 }
%struct.ceph_x_server_challenge = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"handle_reply got server challenge %llx\0A\00", align 1
@CEPH_ENTITY_TYPE_AUTH = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"handle_reply op %d result %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_auth_client*, i32, i8*, i8*)* @ceph_x_handle_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_x_handle_reply(%struct.ceph_auth_client* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ceph_auth_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ceph_x_info*, align 8
  %11 = alloca %struct.ceph_x_reply_header*, align 8
  %12 = alloca %struct.ceph_x_ticket_handler*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ceph_x_server_challenge*, align 8
  store %struct.ceph_auth_client* %0, %struct.ceph_auth_client** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %6, align 8
  %18 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %17, i32 0, i32 1
  %19 = load %struct.ceph_x_info*, %struct.ceph_x_info** %18, align 8
  store %struct.ceph_x_info* %19, %struct.ceph_x_info** %10, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = bitcast i8* %20 to %struct.ceph_x_reply_header*
  store %struct.ceph_x_reply_header* %21, %struct.ceph_x_reply_header** %11, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = ptrtoint i8* %22 to i64
  %25 = ptrtoint i8* %23 to i64
  %26 = sub i64 %24, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %5, align 4
  br label %126

32:                                               ; preds = %4
  %33 = load %struct.ceph_x_info*, %struct.ceph_x_info** %10, align 8
  %34 = getelementptr inbounds %struct.ceph_x_info, %struct.ceph_x_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %67

37:                                               ; preds = %32
  %38 = load i8*, i8** %8, align 8
  %39 = bitcast i8* %38 to %struct.ceph_x_server_challenge*
  store %struct.ceph_x_server_challenge* %39, %struct.ceph_x_server_challenge** %16, align 8
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp ne i64 %41, 4
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %126

46:                                               ; preds = %37
  %47 = load %struct.ceph_x_server_challenge*, %struct.ceph_x_server_challenge** %16, align 8
  %48 = getelementptr inbounds %struct.ceph_x_server_challenge, %struct.ceph_x_server_challenge* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @le64_to_cpu(i32 %49)
  %51 = load %struct.ceph_x_info*, %struct.ceph_x_info** %10, align 8
  %52 = getelementptr inbounds %struct.ceph_x_info, %struct.ceph_x_info* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load %struct.ceph_x_info*, %struct.ceph_x_info** %10, align 8
  %54 = getelementptr inbounds %struct.ceph_x_info, %struct.ceph_x_info* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i8*, i32, ...) @dout(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load %struct.ceph_x_info*, %struct.ceph_x_info** %10, align 8
  %58 = getelementptr inbounds %struct.ceph_x_info, %struct.ceph_x_info* %57, i32 0, i32 0
  store i32 0, i32* %58, align 4
  %59 = load i32, i32* @CEPH_ENTITY_TYPE_AUTH, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.ceph_x_info*, %struct.ceph_x_info** %10, align 8
  %62 = getelementptr inbounds %struct.ceph_x_info, %struct.ceph_x_info* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* @EAGAIN, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %126

67:                                               ; preds = %32
  %68 = load %struct.ceph_x_reply_header*, %struct.ceph_x_reply_header** %11, align 8
  %69 = getelementptr inbounds %struct.ceph_x_reply_header, %struct.ceph_x_reply_header* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @le16_to_cpu(i32 %70)
  store i32 %71, i32* %14, align 4
  %72 = load %struct.ceph_x_reply_header*, %struct.ceph_x_reply_header** %11, align 8
  %73 = getelementptr inbounds %struct.ceph_x_reply_header, %struct.ceph_x_reply_header* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @le32_to_cpu(i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 (i8*, i32, ...) @dout(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %76, i32 %77)
  %79 = load i32, i32* %14, align 4
  switch i32 %79, label %106 [
    i32 129, label %80
    i32 128, label %88
  ]

80:                                               ; preds = %67
  %81 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %6, align 8
  %82 = load %struct.ceph_x_info*, %struct.ceph_x_info** %10, align 8
  %83 = getelementptr inbounds %struct.ceph_x_info, %struct.ceph_x_info* %82, i32 0, i32 2
  %84 = load i8*, i8** %8, align 8
  %85 = getelementptr i8, i8* %84, i64 8
  %86 = load i8*, i8** %9, align 8
  %87 = call i32 @ceph_x_proc_ticket_reply(%struct.ceph_auth_client* %81, i32* %83, i8* %85, i8* %86)
  store i32 %87, i32* %15, align 4
  br label %109

88:                                               ; preds = %67
  %89 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %6, align 8
  %90 = load i32, i32* @CEPH_ENTITY_TYPE_AUTH, align 4
  %91 = call %struct.ceph_x_ticket_handler* @get_ticket_handler(%struct.ceph_auth_client* %89, i32 %90)
  store %struct.ceph_x_ticket_handler* %91, %struct.ceph_x_ticket_handler** %12, align 8
  %92 = load %struct.ceph_x_ticket_handler*, %struct.ceph_x_ticket_handler** %12, align 8
  %93 = call i32 @IS_ERR(%struct.ceph_x_ticket_handler* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load %struct.ceph_x_ticket_handler*, %struct.ceph_x_ticket_handler** %12, align 8
  %97 = call i32 @PTR_ERR(%struct.ceph_x_ticket_handler* %96)
  store i32 %97, i32* %5, align 4
  br label %126

98:                                               ; preds = %88
  %99 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %6, align 8
  %100 = load %struct.ceph_x_ticket_handler*, %struct.ceph_x_ticket_handler** %12, align 8
  %101 = getelementptr inbounds %struct.ceph_x_ticket_handler, %struct.ceph_x_ticket_handler* %100, i32 0, i32 0
  %102 = load i8*, i8** %8, align 8
  %103 = getelementptr i8, i8* %102, i64 8
  %104 = load i8*, i8** %9, align 8
  %105 = call i32 @ceph_x_proc_ticket_reply(%struct.ceph_auth_client* %99, i32* %101, i8* %103, i8* %104)
  store i32 %105, i32* %15, align 4
  br label %109

106:                                              ; preds = %67
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %5, align 4
  br label %126

109:                                              ; preds = %98, %80
  %110 = load i32, i32* %15, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = load i32, i32* %15, align 4
  store i32 %113, i32* %5, align 4
  br label %126

114:                                              ; preds = %109
  %115 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %6, align 8
  %116 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.ceph_x_info*, %struct.ceph_x_info** %10, align 8
  %119 = getelementptr inbounds %struct.ceph_x_info, %struct.ceph_x_info* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %117, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %114
  store i32 0, i32* %5, align 4
  br label %126

123:                                              ; preds = %114
  %124 = load i32, i32* @EAGAIN, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %123, %122, %112, %106, %95, %46, %43, %30
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @dout(i8*, i32, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ceph_x_proc_ticket_reply(%struct.ceph_auth_client*, i32*, i8*, i8*) #1

declare dso_local %struct.ceph_x_ticket_handler* @get_ticket_handler(%struct.ceph_auth_client*, i32) #1

declare dso_local i32 @IS_ERR(%struct.ceph_x_ticket_handler*) #1

declare dso_local i32 @PTR_ERR(%struct.ceph_x_ticket_handler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
