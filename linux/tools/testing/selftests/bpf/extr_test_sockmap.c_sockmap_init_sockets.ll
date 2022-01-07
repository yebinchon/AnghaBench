; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sockmap.c_sockmap_init_sockets.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sockmap.c_sockmap_init_sockets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i8*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@s1 = common dso_local global i32 0, align 4
@s2 = common dso_local global i32 0, align 4
@c1 = common dso_local global i32 0, align 4
@c2 = common dso_local global i32 0, align 4
@__const.sockmap_init_sockets.fds = private unnamed_addr constant [4 x i32*] [i32* @s1, i32* @s2, i32* @c1, i32* @c2], align 16
@p2 = common dso_local global i64 0, align 8
@p1 = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"socket s1 failed()\00", align 1
@errno = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"setsockopt failed()\00", align 1
@FIONBIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"ioctl s1 failed()\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@S1_PORT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"bind s1 failed()\0A\00", align 1
@S2_PORT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"bind s2 failed()\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"listen s1 failed()\0A\00", align 1
@EINPROGRESS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"connect c1 failed()\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"connect c2 failed()\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"accept s1 failed()\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"connected sockets: c1 <-> p1, c2 <-> p2\0A\00", align 1
@.str.11 = private unnamed_addr constant [60 x i8] c"cgroups binding: c1(%i) <-> s1(%i) - - - c2(%i) <-> s2(%i)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sockmap_init_sockets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sockmap_init_sockets(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in, align 8
  %8 = alloca [4 x i32*], align 16
  store i32 %0, i32* %3, align 4
  store i32 1, i32* %6, align 4
  %9 = bitcast [4 x i32*]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([4 x i32*]* @__const.sockmap_init_sockets.fds to i8*), i64 32, i1 false)
  store i32 0, i32* @c2, align 4
  store i32 0, i32* @c1, align 4
  store i64 0, i64* @p2, align 8
  store i64 0, i64* @p1, align 8
  store i32 0, i32* @s2, align 4
  store i32 0, i32* @s1, align 4
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %31, %1
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %34

13:                                               ; preds = %10
  %14 = load i32, i32* @AF_INET, align 4
  %15 = load i32, i32* @SOCK_STREAM, align 4
  %16 = call i32 @socket(i32 %14, i32 %15, i32 0)
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [4 x i32*], [4 x i32*]* %8, i64 0, i64 %18
  %20 = load i32*, i32** %19, align 8
  store i32 %16, i32* %20, align 4
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x i32*], [4 x i32*]* %8, i64 0, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %13
  %28 = call i32 @perror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @errno, align 4
  store i32 %29, i32* %2, align 4
  br label %195

30:                                               ; preds = %13
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %10

34:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %54, %34
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %36, 2
  br i1 %37, label %38, label %57

38:                                               ; preds = %35
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [4 x i32*], [4 x i32*]* %8, i64 0, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SOL_SOCKET, align 4
  %45 = load i32, i32* @SO_REUSEADDR, align 4
  %46 = bitcast i32* %6 to i8*
  %47 = call i32 @setsockopt(i32 %43, i32 %44, i32 %45, i8* %46, i32 4)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %38
  %51 = call i32 @perror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @errno, align 4
  store i32 %52, i32* %2, align 4
  br label %195

53:                                               ; preds = %38
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %35

57:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %76, %57
  %59 = load i32, i32* %4, align 4
  %60 = icmp slt i32 %59, 2
  br i1 %60, label %61, label %79

61:                                               ; preds = %58
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [4 x i32*], [4 x i32*]* %8, i64 0, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @FIONBIO, align 4
  %68 = bitcast i32* %6 to i8*
  %69 = call i32 @ioctl(i32 %66, i32 %67, i8* %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %61
  %73 = call i32 @perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i32, i32* @errno, align 4
  store i32 %74, i32* %2, align 4
  br label %195

75:                                               ; preds = %61
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %58

79:                                               ; preds = %58
  %80 = call i32 @memset(%struct.sockaddr_in* %7, i32 0, i32 16)
  %81 = load i32, i32* @AF_INET, align 4
  %82 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  store i32 %81, i32* %82, align 4
  %83 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %84 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* @S1_PORT, align 4
  %87 = call i8* @htons(i32 %86)
  %88 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  store i8* %87, i8** %88, align 8
  %89 = load i32, i32* @s1, align 4
  %90 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %91 = call i32 @bind(i32 %89, %struct.sockaddr* %90, i32 16)
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %79
  %95 = call i32 @perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %96 = load i32, i32* @errno, align 4
  store i32 %96, i32* %2, align 4
  br label %195

97:                                               ; preds = %79
  %98 = load i32, i32* @S2_PORT, align 4
  %99 = call i8* @htons(i32 %98)
  %100 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  store i8* %99, i8** %100, align 8
  %101 = load i32, i32* @s2, align 4
  %102 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %103 = call i32 @bind(i32 %101, %struct.sockaddr* %102, i32 16)
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %5, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %97
  %107 = call i32 @perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %108 = load i32, i32* @errno, align 4
  store i32 %108, i32* %2, align 4
  br label %195

109:                                              ; preds = %97
  %110 = load i32, i32* @S1_PORT, align 4
  %111 = call i8* @htons(i32 %110)
  %112 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  store i8* %111, i8** %112, align 8
  %113 = load i32, i32* @s1, align 4
  %114 = call i32 @listen(i32 %113, i32 32)
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* %5, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %109
  %118 = call i32 @perror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %119 = load i32, i32* @errno, align 4
  store i32 %119, i32* %2, align 4
  br label %195

120:                                              ; preds = %109
  %121 = load i32, i32* @S2_PORT, align 4
  %122 = call i8* @htons(i32 %121)
  %123 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  store i8* %122, i8** %123, align 8
  %124 = load i32, i32* @s2, align 4
  %125 = call i32 @listen(i32 %124, i32 32)
  store i32 %125, i32* %5, align 4
  %126 = load i32, i32* %5, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %120
  %129 = call i32 @perror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %130 = load i32, i32* @errno, align 4
  store i32 %130, i32* %2, align 4
  br label %195

131:                                              ; preds = %120
  %132 = load i32, i32* @S1_PORT, align 4
  %133 = call i8* @htons(i32 %132)
  %134 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  store i8* %133, i8** %134, align 8
  %135 = load i32, i32* @c1, align 4
  %136 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %137 = call i32 @connect(i32 %135, %struct.sockaddr* %136, i32 16)
  store i32 %137, i32* %5, align 4
  %138 = load i32, i32* %5, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %131
  %141 = load i32, i32* @errno, align 4
  %142 = load i32, i32* @EINPROGRESS, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %140
  %145 = call i32 @perror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %146 = load i32, i32* @errno, align 4
  store i32 %146, i32* %2, align 4
  br label %195

147:                                              ; preds = %140, %131
  %148 = load i32, i32* @S2_PORT, align 4
  %149 = call i8* @htons(i32 %148)
  %150 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  store i8* %149, i8** %150, align 8
  %151 = load i32, i32* @c2, align 4
  %152 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %153 = call i32 @connect(i32 %151, %struct.sockaddr* %152, i32 16)
  store i32 %153, i32* %5, align 4
  %154 = load i32, i32* %5, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %147
  %157 = load i32, i32* @errno, align 4
  %158 = load i32, i32* @EINPROGRESS, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %156
  %161 = call i32 @perror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %162 = load i32, i32* @errno, align 4
  store i32 %162, i32* %2, align 4
  br label %195

163:                                              ; preds = %156, %147
  %164 = load i32, i32* %5, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %163
  store i32 0, i32* %5, align 4
  br label %167

167:                                              ; preds = %166, %163
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* @s1, align 4
  %170 = call i64 @accept(i32 %169, i32* null, i32* null)
  store i64 %170, i64* @p1, align 8
  %171 = load i64, i64* @p1, align 8
  %172 = icmp slt i64 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %168
  %174 = call i32 @perror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %175 = load i32, i32* @errno, align 4
  store i32 %175, i32* %2, align 4
  br label %195

176:                                              ; preds = %168
  %177 = load i32, i32* @s2, align 4
  %178 = call i64 @accept(i32 %177, i32* null, i32* null)
  store i64 %178, i64* @p2, align 8
  %179 = load i64, i64* @p2, align 8
  %180 = icmp slt i64 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %176
  %182 = call i32 @perror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %183 = load i32, i32* @errno, align 4
  store i32 %183, i32* %2, align 4
  br label %195

184:                                              ; preds = %176
  %185 = load i32, i32* %3, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %194

187:                                              ; preds = %184
  %188 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0))
  %189 = load i32, i32* @c1, align 4
  %190 = load i32, i32* @s1, align 4
  %191 = load i32, i32* @c2, align 4
  %192 = load i32, i32* @s2, align 4
  %193 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.11, i64 0, i64 0), i32 %189, i32 %190, i32 %191, i32 %192)
  br label %194

194:                                              ; preds = %187, %184
  store i32 0, i32* %2, align 4
  br label %195

195:                                              ; preds = %194, %181, %173, %160, %144, %128, %117, %106, %94, %72, %50, %27
  %196 = load i32, i32* %2, align 4
  ret i32 %196
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @setsockopt(i32, i32, i32, i8*, i32) #2

declare dso_local i32 @ioctl(i32, i32, i8*) #2

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #2

declare dso_local i32 @inet_addr(i8*) #2

declare dso_local i8* @htons(i32) #2

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @listen(i32, i32) #2

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #2

declare dso_local i64 @accept(i32, i32*, i32*) #2

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
