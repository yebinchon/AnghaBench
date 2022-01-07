; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_fdb.c_fdb_add_entry.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_fdb.c_fdb_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.net_bridge_port = type { i64 }
%struct.net_bridge_fdb_entry = type { i32, i32, i64, i32, i8*, i8*, %struct.net_bridge_port* }

@NTF_STICKY = common dso_local global i64 0, align 8
@NUD_PERMANENT = common dso_local global i32 0, align 4
@NUD_NOARP = common dso_local global i32 0, align 4
@BR_STATE_LEARNING = common dso_local global i64 0, align 8
@BR_STATE_FORWARDING = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"bridge: RTM_NEWNEIGH %s without NUD_PERMANENT\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NLM_F_CREATE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NLM_F_EXCL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@RTM_NEWNEIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_bridge*, %struct.net_bridge_port*, i64*, i32, i32, i32, i64)* @fdb_add_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdb_add_entry(%struct.net_bridge* %0, %struct.net_bridge_port* %1, i64* %2, i32 %3, i32 %4, i32 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.net_bridge*, align 8
  %10 = alloca %struct.net_bridge_port*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.net_bridge_fdb_entry*, align 8
  %18 = alloca i32, align 4
  store %struct.net_bridge* %0, %struct.net_bridge** %9, align 8
  store %struct.net_bridge_port* %1, %struct.net_bridge_port** %10, align 8
  store i64* %2, i64** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  %19 = load i64, i64* %15, align 8
  %20 = load i64, i64* @NTF_STICKY, align 8
  %21 = and i64 %19, %20
  %22 = icmp ne i64 %21, 0
  %23 = xor i1 %22, true
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %16, align 8
  store i32 0, i32* %18, align 4
  %27 = load %struct.net_bridge_port*, %struct.net_bridge_port** %10, align 8
  %28 = icmp ne %struct.net_bridge_port* %27, null
  br i1 %28, label %29, label %54

29:                                               ; preds = %7
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @NUD_PERMANENT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %54, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @NUD_NOARP, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %34
  %40 = load %struct.net_bridge_port*, %struct.net_bridge_port** %10, align 8
  %41 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @BR_STATE_LEARNING, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %54, label %45

45:                                               ; preds = %39
  %46 = load %struct.net_bridge_port*, %struct.net_bridge_port** %10, align 8
  %47 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @BR_STATE_FORWARDING, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %54, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* @EPERM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %8, align 4
  br label %215

54:                                               ; preds = %45, %39, %34, %29, %7
  %55 = load %struct.net_bridge_port*, %struct.net_bridge_port** %10, align 8
  %56 = icmp ne %struct.net_bridge_port* %55, null
  br i1 %56, label %71, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @NUD_PERMANENT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %57
  %63 = load %struct.net_bridge*, %struct.net_bridge** %9, align 8
  %64 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @pr_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %8, align 4
  br label %215

71:                                               ; preds = %57, %54
  %72 = load i64, i64* %16, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @NUD_PERMANENT, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %8, align 4
  br label %215

82:                                               ; preds = %74, %71
  %83 = load %struct.net_bridge*, %struct.net_bridge** %9, align 8
  %84 = load i64*, i64** %11, align 8
  %85 = load i32, i32* %14, align 4
  %86 = call %struct.net_bridge_fdb_entry* @br_fdb_find(%struct.net_bridge* %83, i64* %84, i32 %85)
  store %struct.net_bridge_fdb_entry* %86, %struct.net_bridge_fdb_entry** %17, align 8
  %87 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %17, align 8
  %88 = icmp eq %struct.net_bridge_fdb_entry* %87, null
  br i1 %88, label %89, label %109

89:                                               ; preds = %82
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* @NLM_F_CREATE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %89
  %95 = load i32, i32* @ENOENT, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %8, align 4
  br label %215

97:                                               ; preds = %89
  %98 = load %struct.net_bridge*, %struct.net_bridge** %9, align 8
  %99 = load %struct.net_bridge_port*, %struct.net_bridge_port** %10, align 8
  %100 = load i64*, i64** %11, align 8
  %101 = load i32, i32* %14, align 4
  %102 = call %struct.net_bridge_fdb_entry* @fdb_create(%struct.net_bridge* %98, %struct.net_bridge_port* %99, i64* %100, i32 %101, i32 0, i32 0)
  store %struct.net_bridge_fdb_entry* %102, %struct.net_bridge_fdb_entry** %17, align 8
  %103 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %17, align 8
  %104 = icmp ne %struct.net_bridge_fdb_entry* %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %97
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %8, align 4
  br label %215

108:                                              ; preds = %97
  store i32 1, i32* %18, align 4
  br label %128

109:                                              ; preds = %82
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* @NLM_F_EXCL, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load i32, i32* @EEXIST, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %8, align 4
  br label %215

117:                                              ; preds = %109
  %118 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %17, align 8
  %119 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %118, i32 0, i32 6
  %120 = load %struct.net_bridge_port*, %struct.net_bridge_port** %119, align 8
  %121 = load %struct.net_bridge_port*, %struct.net_bridge_port** %10, align 8
  %122 = icmp ne %struct.net_bridge_port* %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %117
  %124 = load %struct.net_bridge_port*, %struct.net_bridge_port** %10, align 8
  %125 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %17, align 8
  %126 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %125, i32 0, i32 6
  store %struct.net_bridge_port* %124, %struct.net_bridge_port** %126, align 8
  store i32 1, i32* %18, align 4
  br label %127

127:                                              ; preds = %123, %117
  br label %128

128:                                              ; preds = %127, %108
  %129 = load %struct.net_bridge*, %struct.net_bridge** %9, align 8
  %130 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %17, align 8
  %131 = call i32 @fdb_to_nud(%struct.net_bridge* %129, %struct.net_bridge_fdb_entry* %130)
  %132 = load i32, i32* %12, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %188

134:                                              ; preds = %128
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* @NUD_PERMANENT, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %153

139:                                              ; preds = %134
  %140 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %17, align 8
  %141 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %140, i32 0, i32 0
  store i32 1, i32* %141, align 8
  %142 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %17, align 8
  %143 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %152, label %146

146:                                              ; preds = %139
  %147 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %17, align 8
  %148 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %147, i32 0, i32 1
  store i32 1, i32* %148, align 4
  %149 = load %struct.net_bridge*, %struct.net_bridge** %9, align 8
  %150 = load i64*, i64** %11, align 8
  %151 = call i32 @fdb_add_hw_addr(%struct.net_bridge* %149, i64* %150)
  br label %152

152:                                              ; preds = %146, %139
  br label %187

153:                                              ; preds = %134
  %154 = load i32, i32* %12, align 4
  %155 = load i32, i32* @NUD_NOARP, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %172

158:                                              ; preds = %153
  %159 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %17, align 8
  %160 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %159, i32 0, i32 0
  store i32 0, i32* %160, align 8
  %161 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %17, align 8
  %162 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %171, label %165

165:                                              ; preds = %158
  %166 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %17, align 8
  %167 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %166, i32 0, i32 1
  store i32 1, i32* %167, align 4
  %168 = load %struct.net_bridge*, %struct.net_bridge** %9, align 8
  %169 = load i64*, i64** %11, align 8
  %170 = call i32 @fdb_add_hw_addr(%struct.net_bridge* %168, i64* %169)
  br label %171

171:                                              ; preds = %165, %158
  br label %186

172:                                              ; preds = %153
  %173 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %17, align 8
  %174 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %173, i32 0, i32 0
  store i32 0, i32* %174, align 8
  %175 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %17, align 8
  %176 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %172
  %180 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %17, align 8
  %181 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %180, i32 0, i32 1
  store i32 0, i32* %181, align 4
  %182 = load %struct.net_bridge*, %struct.net_bridge** %9, align 8
  %183 = load i64*, i64** %11, align 8
  %184 = call i32 @fdb_del_hw_addr(%struct.net_bridge* %182, i64* %183)
  br label %185

185:                                              ; preds = %179, %172
  br label %186

186:                                              ; preds = %185, %171
  br label %187

187:                                              ; preds = %186, %152
  store i32 1, i32* %18, align 4
  br label %188

188:                                              ; preds = %187, %128
  %189 = load i64, i64* %16, align 8
  %190 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %17, align 8
  %191 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %189, %192
  br i1 %193, label %194, label %198

194:                                              ; preds = %188
  %195 = load i64, i64* %16, align 8
  %196 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %17, align 8
  %197 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %196, i32 0, i32 2
  store i64 %195, i64* %197, align 8
  store i32 1, i32* %18, align 4
  br label %198

198:                                              ; preds = %194, %188
  %199 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %17, align 8
  %200 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %199, i32 0, i32 3
  store i32 1, i32* %200, align 8
  %201 = load i8*, i8** @jiffies, align 8
  %202 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %17, align 8
  %203 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %202, i32 0, i32 5
  store i8* %201, i8** %203, align 8
  %204 = load i32, i32* %18, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %214

206:                                              ; preds = %198
  %207 = load i8*, i8** @jiffies, align 8
  %208 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %17, align 8
  %209 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %208, i32 0, i32 4
  store i8* %207, i8** %209, align 8
  %210 = load %struct.net_bridge*, %struct.net_bridge** %9, align 8
  %211 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %17, align 8
  %212 = load i32, i32* @RTM_NEWNEIGH, align 4
  %213 = call i32 @fdb_notify(%struct.net_bridge* %210, %struct.net_bridge_fdb_entry* %211, i32 %212, i32 1)
  br label %214

214:                                              ; preds = %206, %198
  store i32 0, i32* %8, align 4
  br label %215

215:                                              ; preds = %214, %114, %105, %94, %79, %62, %51
  %216 = load i32, i32* %8, align 4
  ret i32 %216
}

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local %struct.net_bridge_fdb_entry* @br_fdb_find(%struct.net_bridge*, i64*, i32) #1

declare dso_local %struct.net_bridge_fdb_entry* @fdb_create(%struct.net_bridge*, %struct.net_bridge_port*, i64*, i32, i32, i32) #1

declare dso_local i32 @fdb_to_nud(%struct.net_bridge*, %struct.net_bridge_fdb_entry*) #1

declare dso_local i32 @fdb_add_hw_addr(%struct.net_bridge*, i64*) #1

declare dso_local i32 @fdb_del_hw_addr(%struct.net_bridge*, i64*) #1

declare dso_local i32 @fdb_notify(%struct.net_bridge*, %struct.net_bridge_fdb_entry*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
