
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
 unsigned int CS35L36_PAC_PMEM_WORD0 ;
 unsigned int CS35L36_PAC_PMEM_WORD1023 ;
__attribute__((used)) static bool cs35l36_readable_reg(struct device *dev, unsigned int reg)
{
 switch (reg) {
 case 148:
 case 147:
 case 216:
 case 146:
 case 144:
 case 188:
 case 193:
 case 192:
 case 191:
 case 190:
 case 189:
 case 185:
 case 184:
 case 183:
 case 222:
 case 218:
 case 161:
 case 164:
 case 163:
 case 162:
 case 224:
 case 259:
 case 187:
 case 221:
 case 167:
 case 171:
 case 168:
 case 217:
 case 264:
 case 159:
 case 160:
 case 145:
 case 200:
 case 196:
 case 198:
 case 201:
 case 195:
 case 197:
 case 199:
 case 230:
 case 229:
 case 234:
 case 233:
 case 238:
 case 232:
 case 231:
 case 237:
 case 236:
 case 235:
 case 227:
 case 228:
 case 135:
 case 136:
 case 131:
 case 134:
 case 133:
 case 132:
 case 141:
 case 140:
 case 139:
 case 219:
 case 220:
 case 130:
 case 128:
 case 129:
 case 239:
 case 253:
 case 255:
 case 254:
 case 248:
 case 245:
 case 242:
 case 240:
 case 251:
 case 250:
 case 252:
 case 249:
 case 247:
 case 246:
 case 244:
 case 243:
 case 241:
 case 154:
 case 153:
 case 152:
 case 151:
 case 150:
 case 158:
 case 157:
 case 156:
 case 149:
 case 155:
 case 263:
 case 138:
 case 143:
 case 137:
 case 142:
 case 186:
 case 262:
 case 226:
 case 225:
 case 194:
 case 261:
 case 166:
 case 165:
 case 223:
 case 256:
 case 257:
 case 258:
 case 170:
 case 260:
 case 169:
 case 212:
 case 209:
 case 205:
 case 202:
 case 213:
 case 210:
 case 206:
 case 203:
 case 214:
 case 211:
 case 207:
 case 204:
 case 215:
 case 208:
 case 172:
 case 173:
 case 174:
 case 182:
 case 181:
 case 180:
 case 179:
 case 178:
 case 177:
 case 176:
 case 175:
  return 1;
 default:
  if (reg >= CS35L36_PAC_PMEM_WORD0 &&
   reg <= CS35L36_PAC_PMEM_WORD1023)
   return 1;
  else
   return 0;
 }
}
