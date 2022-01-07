; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtsock.c_xs_sendpages.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtsock.c_xs_sendpages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockaddr = type { i32 }
%struct.xdr_buf = type { i32, i32, %struct.TYPE_3__*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.msghdr = type { i32, i32, %struct.sockaddr* }

@XS_SENDMSG_FLAGS = common dso_local global i32 0, align 4
@MSG_MORE = common dso_local global i32 0, align 4
@ENOTSOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32, %struct.xdr_buf*, i32, i32, i32*)* @xs_sendpages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xs_sendpages(%struct.socket* %0, %struct.sockaddr* %1, i32 %2, %struct.xdr_buf* %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.socket*, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.xdr_buf*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.msghdr, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %9, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.xdr_buf* %3, %struct.xdr_buf** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %23 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 0
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %23, align 8
  %25 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 1
  %26 = load i32, i32* @XS_SENDMSG_FLAGS, align 4
  %27 = load i32, i32* @MSG_MORE, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %25, align 4
  %29 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 2
  %30 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  store %struct.sockaddr* %30, %struct.sockaddr** %29, align 8
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i64 4, i64 0
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* %17, align 4
  %37 = load %struct.xdr_buf*, %struct.xdr_buf** %12, align 8
  %38 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add i32 %36, %39
  %41 = load i32, i32* %13, align 4
  %42 = sub i32 %40, %41
  store i32 %42, i32* %18, align 4
  store i32 0, i32* %20, align 4
  %43 = load %struct.socket*, %struct.socket** %9, align 8
  %44 = icmp ne %struct.socket* %43, null
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %7
  %50 = load i32, i32* @ENOTSOCK, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %8, align 4
  br label %195

52:                                               ; preds = %7
  %53 = load %struct.xdr_buf*, %struct.xdr_buf** %12, align 8
  %54 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %53, i32 0, i32 3
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %17, align 4
  %60 = add i32 %58, %59
  store i32 %60, i32* %19, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %19, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %112

64:                                               ; preds = %52
  %65 = load i32, i32* %19, align 4
  %66 = load i32, i32* %13, align 4
  %67 = sub i32 %65, %66
  store i32 %67, i32* %21, align 4
  %68 = load i32, i32* %21, align 4
  %69 = load i32, i32* %18, align 4
  %70 = sub i32 %69, %68
  store i32 %70, i32* %18, align 4
  %71 = load i32, i32* %18, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %64
  %74 = load i32, i32* @MSG_MORE, align 4
  %75 = xor i32 %74, -1
  %76 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, %75
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %73, %64
  %80 = load i32, i32* %17, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %79
  %83 = load %struct.socket*, %struct.socket** %9, align 8
  %84 = load i32, i32* %14, align 4
  %85 = load %struct.xdr_buf*, %struct.xdr_buf** %12, align 8
  %86 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %85, i32 0, i32 3
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 0
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @xs_send_rm_and_kvec(%struct.socket* %83, %struct.msghdr* %16, i32 %84, %struct.TYPE_3__* %88, i32 %89)
  store i32 %90, i32* %20, align 4
  br label %99

91:                                               ; preds = %79
  %92 = load %struct.socket*, %struct.socket** %9, align 8
  %93 = load %struct.xdr_buf*, %struct.xdr_buf** %12, align 8
  %94 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %93, i32 0, i32 3
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i64 0
  %97 = load i32, i32* %13, align 4
  %98 = call i32 @xs_send_kvec(%struct.socket* %92, %struct.msghdr* %16, %struct.TYPE_3__* %96, i32 %97)
  store i32 %98, i32* %20, align 4
  br label %99

99:                                               ; preds = %91, %82
  %100 = load i32, i32* %18, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* %20, align 4
  %104 = load i32, i32* %21, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %102, %99
  br label %185

107:                                              ; preds = %102
  %108 = load i32, i32* %20, align 4
  %109 = load i32*, i32** %15, align 8
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, %108
  store i32 %111, i32* %109, align 4
  store i32 0, i32* %13, align 4
  br label %116

112:                                              ; preds = %52
  %113 = load i32, i32* %19, align 4
  %114 = load i32, i32* %13, align 4
  %115 = sub i32 %114, %113
  store i32 %115, i32* %13, align 4
  br label %116

116:                                              ; preds = %112, %107
  %117 = load i32, i32* %13, align 4
  %118 = load %struct.xdr_buf*, %struct.xdr_buf** %12, align 8
  %119 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp ult i32 %117, %120
  br i1 %121, label %122, label %156

122:                                              ; preds = %116
  %123 = load %struct.xdr_buf*, %struct.xdr_buf** %12, align 8
  %124 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %13, align 4
  %127 = sub i32 %125, %126
  store i32 %127, i32* %22, align 4
  %128 = load i32, i32* %22, align 4
  %129 = load i32, i32* %18, align 4
  %130 = sub i32 %129, %128
  store i32 %130, i32* %18, align 4
  %131 = load i32, i32* %18, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %122
  %134 = load i32, i32* @MSG_MORE, align 4
  %135 = xor i32 %134, -1
  %136 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = and i32 %137, %135
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %133, %122
  %140 = load %struct.socket*, %struct.socket** %9, align 8
  %141 = load %struct.xdr_buf*, %struct.xdr_buf** %12, align 8
  %142 = load i32, i32* %13, align 4
  %143 = call i32 @xs_send_pagedata(%struct.socket* %140, %struct.msghdr* %16, %struct.xdr_buf* %141, i32 %142)
  store i32 %143, i32* %20, align 4
  %144 = load i32, i32* %18, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %150, label %146

146:                                              ; preds = %139
  %147 = load i32, i32* %20, align 4
  %148 = load i32, i32* %22, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %146, %139
  br label %185

151:                                              ; preds = %146
  %152 = load i32, i32* %20, align 4
  %153 = load i32*, i32** %15, align 8
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, %152
  store i32 %155, i32* %153, align 4
  store i32 0, i32* %13, align 4
  br label %162

156:                                              ; preds = %116
  %157 = load %struct.xdr_buf*, %struct.xdr_buf** %12, align 8
  %158 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %13, align 4
  %161 = sub i32 %160, %159
  store i32 %161, i32* %13, align 4
  br label %162

162:                                              ; preds = %156, %151
  %163 = load i32, i32* %13, align 4
  %164 = load %struct.xdr_buf*, %struct.xdr_buf** %12, align 8
  %165 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %164, i32 0, i32 2
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i64 0
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = icmp uge i32 %163, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %162
  store i32 0, i32* %8, align 4
  br label %195

172:                                              ; preds = %162
  %173 = load i32, i32* @MSG_MORE, align 4
  %174 = xor i32 %173, -1
  %175 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = and i32 %176, %174
  store i32 %177, i32* %175, align 4
  %178 = load %struct.socket*, %struct.socket** %9, align 8
  %179 = load %struct.xdr_buf*, %struct.xdr_buf** %12, align 8
  %180 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %179, i32 0, i32 2
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i64 0
  %183 = load i32, i32* %13, align 4
  %184 = call i32 @xs_send_kvec(%struct.socket* %178, %struct.msghdr* %16, %struct.TYPE_3__* %182, i32 %183)
  store i32 %184, i32* %20, align 4
  br label %185

185:                                              ; preds = %172, %150, %106
  %186 = load i32, i32* %20, align 4
  %187 = icmp sgt i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %185
  %189 = load i32, i32* %20, align 4
  %190 = load i32*, i32** %15, align 8
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %191, %189
  store i32 %192, i32* %190, align 4
  store i32 0, i32* %20, align 4
  br label %193

193:                                              ; preds = %188, %185
  %194 = load i32, i32* %20, align 4
  store i32 %194, i32* %8, align 4
  br label %195

195:                                              ; preds = %193, %171, %49
  %196 = load i32, i32* %8, align 4
  ret i32 %196
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @xs_send_rm_and_kvec(%struct.socket*, %struct.msghdr*, i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @xs_send_kvec(%struct.socket*, %struct.msghdr*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @xs_send_pagedata(%struct.socket*, %struct.msghdr*, %struct.xdr_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
